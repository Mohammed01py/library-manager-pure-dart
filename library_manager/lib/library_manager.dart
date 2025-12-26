import 'dart:convert';
import 'dart:io';

import 'package:library_manager/book.dart';
import 'package:library_manager/magazine.dart';

class LibraryManager {
  List<Book> books=[];
  List<Magazine> magazines=[];


  // Await + async as requested from the "README.md"
  Future<String> getUserInput(String userText) async{
    stdout.write(userText);
    await Future.delayed(Duration(seconds: 2)); // Await as required from the "README.md"
    String? input = stdin.readLineSync(); // "Wrap input handling (stdin.readLineSync()) inside asynchronous functions to simulate async behavior"
    return input ?? ""; // if it's empty return "". Which mean print nothing
  }
  Future<int>getIntInput(String userText) async{
    while (true){
      stdout.write(userText);
      await Future.delayed(Duration(seconds: 2));
      String? input = stdin.readLineSync();
      try {
        return int.parse(input ?? "");
      } catch (e) {
        print("Wrong input, Enter a correct number");
      }
    }
  }

  // To add books
  Future<void> addBooks() async{
    int bookCount = await getIntInput("How many books you want to add? ");

    for (int i=1; i<=bookCount;i++){
      print("\nEnter the information for book number $i: ");

      stdout.write("Title: ");
      String title = stdin.readLineSync() ?? "";
      stdout.write("Author: ");
      String author= stdin.readLineSync() ?? "";
      stdout.write("Year: ");
      int year = int.parse(stdin.readLineSync() ?? "0");

      // Req: Maintain one list for books.
      Book book = Book(title: title, author: author, year: year);
      books.add(book); // Will add values to the end of the list
    }
  }

  // To add magazines
  Future<void> addMagazinesI() async {
    int magazineCount = await getIntInput("\nHow many magazines you wanna add?: ");

    for(int i =1; i<=magazineCount;i++){
      print("\nEnter the information for book number $i: ");

      stdout.write("Title: ");
      String title = stdin.readLineSync() ??"";
      stdout.write("Issue Numbers: ");
      int issueNumber = int.parse(stdin.readLineSync() ??"0");
      stdout.write("Year: ");
      int year = int.parse(stdin.readLineSync() ?? "0");

      // Req: Maintain another list for magazines.
      Magazine magazine = Magazine(title: title, issueNumber: issueNumber, year: year);
      magazines.add(magazine);
    }
  }

  // To display all library items
  void displayLibrary(){
    print("\nBooks in Library: ");
    if (books.isEmpty){
      print("There's no books");
    } else {
      for (Book books in books) {
        print(books);
      }
    }
    print("\nMagazines in Library: ");
    if (magazines.isEmpty){
      print("There's no magazines");
    } else {
      for (Magazine magazine in magazines){
        print(magazine);
      }
    }
  }

  // To save to JSON
  Future<void> saveToJSON() async {
    try{
      Map<String, dynamic> libraryInfo ={
        "books": books.map((book)=> book.toJSON()).toList(),"magazines": magazines.map((magazine)=> magazine.toJSON()).toList(),};

        File file = File("library.json");
        await file.writeAsString(jsonEncode(libraryInfo));
        stdout.write("\nLibrary have been saved your data in library.json!!");
      } catch (e) {
        stdout.write("You can't save to json because: $e");
      }
    }

  // To load from JSON
  Future<void> loadFromJSON() async {
    try { 
      File file = File("library.json");
      if (await file.exists()){
        String jsonString = file.readAsStringSync();
        Map<String, dynamic> libraryInfo=jsonDecode(jsonString);

        magazines.clear();
        for(var magazineJSON in libraryInfo['magazines']){
          magazines.add(Magazine.fromJSON(magazineJSON));
        }
        print("Library have been loaded from library.json!!");
      }
    } catch (e) {
      print("Error loading from library.json: $e");
    }
  }
}
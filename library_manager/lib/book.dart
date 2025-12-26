import 'package:library_manager/library_item.dart';

class Book extends LibraryItem {
  String author;

  Book({required super.title, required this.author, required super.year});

  @override
  String toString(){
    return "$title by $author in $year";
  }

  // To save to JSON
  @override
  Map<String,dynamic> toJSON(){
    return{
      "type": "book",
      "title": title,
      "author": author,
      "year":year,
    };
  }


  // To load from JSON
  factory Book.fromJSON(Map<String,dynamic> json){
    return Book(title: json["title"], author: json["author"],year: json["year"],);
  }
}
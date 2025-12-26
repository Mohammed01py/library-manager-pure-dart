import 'package:library_manager/library_item.dart';

class Magazine extends LibraryItem {
  int issueNumber;
  // Q/ What is "Issue Number"?  
  // A/ "issue number in the context of books and magazines refers to a specific designation given to a publication that is part of a series" got it from AI, sadly there's no single (valid) resource to explain this information

  Magazine({required super.title, required this.issueNumber, required super.year});

  @override
  String toString(){
    return "$title - Issue $issueNumber ($year)";
  }

  // To upload magazine to json file:
  @override
  Map<String, dynamic> toJSON(){
    return {
      "type": "magazine",
      "title": title,
      "issueNumber":  issueNumber,
      "year": year,
    };
  }

  // Factory as requested + to load from json
  factory Magazine.fromJSON(Map<String, dynamic> json) {
    return Magazine(title: json["title"], issueNumber: json["issueNumber"], year: json["year"]);
  }
}
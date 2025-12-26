abstract class LibraryItem {
  // Req from the "README.MD", 2 or more.
  String title;
  int year;

  LibraryItem({required this.title, required this.year});

  Map<String, dynamic> toJSON(); // To make it save to JSON
}
import 'package:library_manager/library_manager.dart';

Future<void> run() async{ 
  LibraryManager manager= LibraryManager();

  try{
    // Right now I'm like saying to the compiler "from LibraryManager get addBooks and do not forget that LibraryManager is manager now"
    await manager.addBooks();
    await manager.addMagazinesI();
    manager.displayLibrary();
    await manager.saveToJSON();
  } catch (e) {
    print("You got an error: $e");
  }
}

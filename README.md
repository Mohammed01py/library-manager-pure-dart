# 📚 Library Manager 📚

## Overview
Library Manager is a Dart-based command-line application that helps you manage your collection of books and magazines. It provides an intuitive interface for adding, displaying, and persisting your library items using JSON storage.

## Design Prototype
The application follows object-oriented design principles with an abstract base class and specific implementations for different types of library items.

## Output
With showing ("Try, catch") error
<img width="728" height="397" alt="Image" src="https://github.com/user-attachments/assets/5b3534ce-eee4-4197-a77e-6a7aa5963610" />
Without showing ("Try, catch") error
<img width="1320" height="967" alt="Image" src="https://github.com/user-attachments/assets/1b5d697e-a7b3-4380-aa75-363e17f421b8" />

## Code
<img width="760" height="777" alt="Image" src="https://github.com/user-attachments/assets/c27c8399-6461-494b-bc98-5897e8f1a9d3" />
<img width="1080" height="875" alt="Image" src="https://github.com/user-attachments/assets/33e3655a-0645-40bf-b1fc-bc4b10a62bdd" />
<img width="1159" height="625" alt="Image" src="https://github.com/user-attachments/assets/c6a2db73-97ab-45f7-a23c-0e3216f15e0e" />
<img width="1157" height="335" alt="Image" src="https://github.com/user-attachments/assets/e9161f7e-0ce3-4904-a703-cd8d12179a94" />
<img width="704" height="618" alt="Image" src="https://github.com/user-attachments/assets/2ac4fe21-c910-47d1-9708-d41ebd271576" />
<img width="536" height="241" alt="Image" src="https://github.com/user-attachments/assets/15e3b7c4-71f1-4ba7-8b2f-a9eca4cc4a3c" />
<img width="409" height="175" alt="Image" src="https://github.com/user-attachments/assets/e4f17dc2-ae5c-4f14-8b9d-4ec052ec0ef6" />
<img width="1194" height="869" alt="Image" src="https://github.com/user-attachments/assets/3506728f-b4fa-4922-94a8-60128edd0688" />

## Features ✨
- Add and manage books with title, author, and publication year
- Add and manage magazines with title, issue number, and publication year
- Display all library items in an organized format
- Persist library data using JSON serialization
- Load previously saved library data from JSON files
- Asynchronous operations for user input handling
- Type-safe implementation using Dart's strong typing system

## Tech Stack 🛠️
- Dart programming language

## Internal Packages Used 📦
- `dart:convert` - For JSON encoding and decoding
- `dart:io` - For file operations and console I/O
- Custom packages:
  - `library_item.dart` - Abstract base class for library items
  - `book.dart` - Implementation for book items
  - `magazine.dart` - Implementation for magazine items
  - `library_manager.dart` - Core management functionality
  - `run.dart` - Application entry point

## Installation 🚀
1. Make sure you have Dart SDK installed on your system using "dart --version" in your Terminal/CMD If not installed, follow the instructions at https://dart.dev/get-dart
2. Clone this repository:
"git clone https://github.com/Camp-management/library-manager-Mohammed01py.git"
3. Navigate to the project directory:
"cd library-manager-Mohammed01py/library_manager"
4. Get dependencies: "dart pub get"
5. Run the application: "dart run"

## Folder Structure 📂
library_manager/
├── lib/
│   ├── book.dart            # Book class implementation
│   ├── library_item.dart    # Abstract base class for library items
│   ├── library_manager.dart # Core management functionality
│   ├── magazine.dart        # Magazine class implementation
│   └── run.dart             # Application entry point
├── library.json             # JSON storage file for library data
├── pubspec.yaml             # Project configuration
├── analysis_options.yaml    # Dart analyzer options
├── CHANGELOG.md             # Project changelog
└── README.md                # This file

## How It Works 🔍
The Library Manager uses an object-oriented approach with inheritance. The `LibraryItem` serves as an abstract base class, with `Book` and `Magazine` classes extending it. The `LibraryManager` class handles user interactions, data management, and persistence operations.

Data is stored in memory during runtime and can be persisted to a JSON file for later retrieval. The application supports asynchronous operations for a better user experience.

## Contributing 🤝
Contributions, issues, and feature requests are welcome! Feel free to check the issues page.

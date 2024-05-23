EEK; 4// Define the Person class
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// Define the Student class inheriting from Person
class Student extends Person {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  @override
  void greet() {
    print('Hello, my name is $name, I am $age years old, and I am studying $major.');
  }
}
// Define the Readable interface
abstract class Readable {
  void read();
}

// Define the Book class implementing Readable interface
class Book implements Readable {
  String title;
  String author;

  Book(this.title, this.author);

  @override
  void read() {
    print('Reading $title by $author');
  }
}
/*import import 'package:library_name/library_name.dart';*/

void main() {
  // Read data from a file to initialize a Book instance
  final file = File('book_data.txt');
  final lines = file.readAsLinesSync();

  if (lines.length >= 2) {
    final title = lines[0];
    final author = lines[1];
    final book = Book(title, author);
    book.read();
  } else {
    print('Invalid data format in file.');
  }
}

class File {
  File(String s);

  readAsLinesSync() {}
}
// Define the Library class
class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void displayBooks() {
    print('Library Books:');
    for (var book in books) {
      book.read();
    }
  }
}

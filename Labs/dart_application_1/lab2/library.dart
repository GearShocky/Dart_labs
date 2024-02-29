import 'book.dart';

class Library {
  List<Book> books = [];

  ////////////////////////////////////
  ///Геттеры и сеттеры наверное
  
  void addBook(Book book) {
    books.add(book);
    print('Добавлена книга "${book.title}".');
  }

  void removeBook(Book book) {
    if (books.contains(book)) {
      books.remove(book);
      print('Книга "${book.title}" была удалена из библиотеки.');
    } else {
      print('Книги с названием "${book.title}" нет.');
    }
  }

  void displayBooksInfo() {
    if (books.isEmpty) {
      print('В библиотеке нет книг.');
    } else {
      print('Книги в библиотеке:');
      for (var book in books) {
        print(book.getBookInfo());
      }
    }
  }
}
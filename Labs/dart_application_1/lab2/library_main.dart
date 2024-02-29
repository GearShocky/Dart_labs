import 'book.dart';
import 'library.dart';

void main() {
  Library library = Library();

  // Примеры книг
  Book book1 = Book('Три поросёнка', 'Михалков Сергей Владимирович', 2021, 48);
  Book book2 = Book('Основание', 'Айзек Азимов', 1942, 230);

  library.addBook(book1);
  library.addBook(book2);
  library.displayBooksInfo();
  library.removeBook(book1);
  library.displayBooksInfo();
}
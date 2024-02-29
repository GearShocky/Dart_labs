class Book {
  String title;
  String author;
  int year;
  int pageCount;

  Book(this.title, this.author, this.year, this.pageCount);

  ///////////////////////////////////////

  String getBookInfo() {
    String info = 'Title: $title\n';
    info += 'Author: $author\n';
    info += 'Year: $year\n';
    info += 'Page Count: $pageCount\n';
    return info;
  }

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Year: $year');
    print('Page Count: $pageCount');
  }
}
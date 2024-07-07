class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);

  void displayInformation() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $numberOfPages');
  }
}

void main() {
  
  Book b = Book('pliot positions', 'D.anas', 110);

  b.displayInformation();
}
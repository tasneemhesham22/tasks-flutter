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

class Novel extends Book {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(title, author, numberOfPages);

  
  @override
  void displayInformation() {
    super.displayInformation();
    print('Genre: $genre');
  }
}

void main() {
  
  Novel n = Novel('1977', 'D.anas', 110, 'realistic');
  
  n.displayInformation();
}
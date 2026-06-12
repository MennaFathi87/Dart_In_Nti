class Book {
  String title;
  String author;
  Book(this.title, this.author);
  void display() {
    print("Book: $title");
    print("Author: $author");
  }
}

void main(){
  Book book=Book('Harry Potter', 'J.K. Rowling');
  book.display();
} 
/*
the second way to create constructor is by using named constructor
Person(String name, int age) {
  this.name = name;
  this.age = age;
}
 */
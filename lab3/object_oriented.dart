/*
====================================================
 Dart Object-Oriented Programming (OOP)
====================================================

This file is designed for learning and teaching Dart OOP concepts.
Each section is independent and focuses on ONE concept clearly.
Includes student exercises, TODOs, and Mini Challenges.

----------------------------------------------------
 Topics Covered:
 1. Classes & Objects
 2. Constructors
 3. Named Constructors
 4. Encapsulation
 5. Inheritance
 6. Polymorphism
 7. Abstraction
 8. Abstract Classes
 9. Interfaces (implements)
10. Mixins
----------------------------------------------------
*/

// ==================================================
//  Classes & Objects
// ==================================================
//* thi is class
class Car {
  //* this properities
  //! late is used to initialize the variable later يعني هندي قيمه للمتغير بعدين عشان ميحصلش runtime error
  late String brand;
  late int year;
  //* we use method
  void drive() {
    print('The car is driving');
  }

// MINI CHALLENGE: Add a method honk() that prints "Beep! Beep!" and test it
  void honk() {
    print('Beep! Beep!');
  }
}

void classAndObjectDemo() {
  //* this is object
  Car car = Car();
  car.brand = 'Toyota';
  car.year = 2024;
  car.drive();
  //
  car.honk();
  //* this is another object
  Car car2 = Car();
  car2.brand = "BMW";
  car2.year = 2026;
  car2.drive();
  //
  car2.honk();
  print(car.brand);

  print(car2.brand);
  // TODO: Create another Car object and call drive()
  // MINI CHALLENGE: Add a method honk() that prints "Beep! Beep!" and test it
}

// ==================================================
//  Constructors
// ==================================================

class Person {
  String name;
  int age;
  void greet() {
    print("hello, $name");
  }

  Person(this.name, this.age);
}

void constructorDemo() {
  Person p = Person('Ahmed', 25);
  print(p.name);
  p.greet();
  // TODO: Create a second person object and print both names
  Person p2 = Person('Fatima', 30);
  print(p2.name);
  p2.greet();
  // MINI CHALLENGE: Add a method greet() that prints "Hello, <name>!"
}

// ==================================================
//  Named Constructors
// ==================================================

class Product {
  String name;
  double price;
double discount;
//named construvtor
  Product(this.name,this.price): discount=0.0;
  void display() {
        print("Name: $name");
    print("Price: $price");
    print("Discount: $discount");

  }
}

void namedConstructorDemo() {
  Product p1 = Product('Laptop', 1500);
  Product p2 = Product('Book', 20);
  print(p1.price);
  print(p2.price);
  // TODO: Print both product details
  // MINI CHALLENGE: Add a named constructor for discounted product and print discount
}

// ==================================================
//  Encapsulation
// ==================================================

class BankAccount {
  String name = "";
  double _balance = 0; // private variable
 //* _namevarable is privat variable because it starts with _ and can only be accessed within the class
  //* we use getter to access the private
  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }
}

// ==================================================
//  Inheritance
// ==================================================

class Animal {
  void makeSound() {
    print('Animal sound');
  }
  void eat(){
    print('Animal is eating');
  }

}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
  @override
  void eat(){
    print('Dog is eating');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat Meaw');
  }
  @override
  void eat(){
    print('Cat is eating');
  }
}

void inheritanceDemo() {
  Dog dog = Dog();
  dog.makeSound();
  Cat cat = Cat();
  cat.makeSound();
  // TODO: Create Cat class extending Animal, override makeSound()
  // MINI CHALLENGE: Add method eat() to Animal, override in Dog and Cat
}

// ==================================================
//  Polymorphism
// ==================================================

void polymorphismDemo(Animal an) {
  an.makeSound();

  // TODO: Create list of Animals with Dogs and Cats, call makeSound() in loop
  // MINI CHALLENGE: Use polymorphism to call eat() on all animals
}

// ==================================================
//  Abstraction
// ==================================================

// TODO: Think of a real-world example for abstraction
// MINI CHALLENGE: Create abstract class Appliance with abstract method turnOn(), implement in Fan and Light classes

// ==================================================
//  Abstract Classes
// ==================================================

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() => 3.14 * radius * radius;
}

void abstractClassDemo() {
  Shape shape = Circle(5);
  print(shape.calculateArea());

  // TODO: Add Rectangle class extending Shape, implement calculateArea()
  // MINI CHALLENGE: Create a list of Shape objects (Circle + Rectangle) and calculate total area
}

// ==================================================
//  Interfaces (implements)
// ==================================================

abstract class Flyable {
  void fly();
}

class Bird implements Flyable {
  @override
  void fly() {
    print('Bird is flying');
  }
}

void interfaceDemo() {
  Flyable bird = Bird();
  bird.fly();

  // TODO: Create Plane class implementing Flyable, call fly()
  // MINI CHALLENGE: Add land() method to Flyable interface, implement in Bird and Plane
}

// ==================================================
// Mixins
// ==================================================

mixin Logger {
  void log(String message) {
    print('LOG: $message');
  }
}

class Service with Logger {
  void execute() {
    log('Service executed');
  }
}

void mixinDemo() {
  Service service = Service();
  service.execute();

  // TODO: Create another class with Logger mixin and test logging
  // MINI CHALLENGE: Add multiple mixins to one class (Logger + another behavior) and demonstrate combined functionality
}

// ==================================================
//  Main Entry Point
// ==================================================

/*
====================================================
 Student Exercises Notes:
----------------------------------------------------
- Each TODO encourages hands-on practice.
- MINI CHALLENGES extend thinking and design skills.
- Students can try combining concepts (e.g., mixin + inheritance + interface).
- Ideal for lab sessions, assignments, or group exercises.
====================================================
*/

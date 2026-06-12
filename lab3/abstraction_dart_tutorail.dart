// ============================================
// Abstraction in OOP - Dart Full Tutorial
// ============================================

// Definition:
// Abstraction means hiding implementation details
// and showing only the essential features.

// ============================================
// Abstract Class Example
// ============================================

abstract class Animal {
  void sound(); // no implementation
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

// Task 1:
// Create objects from Dog and Cat and call sound()

// ============================================
// Payment System Example
// ============================================

abstract class Payment {
  void pay();
}

class Cash extends Payment {
  @override
  void pay() {
    print("Pay with cash");
  }
}

class CreditCard extends Payment {
  @override
  void pay() {
    print("Pay with credit card");
  }
}

// Task 2:
// Create function makePayment(Payment p)
// and test with different types

void makePayment(Payment p) {
  p.pay();
}

// ============================================
// Shape Example
// ============================================

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

// Task 3:
// Create list of shapes and print areas

// ============================================
// Notification System (Challenge)
// ============================================

abstract class Notification {
  void send();
}

class Email extends Notification {
  @override
  void send() {
    print("Sending Email");
  }
}

class SMS extends Notification {
  @override
  void send() {
    print("Sending SMS");
  }
}

class PushNotification extends Notification {
  @override
  void send() {
    print("Sending Push Notification");
  }
}

// Task 4:
// Create list of notifications and call send()

// ============================================
// Main Function
// ============================================

void main() {
  print("=== Abstraction Demo ===");

  //Animal
  Animal a1 = Dog();
  Animal a2 = Cat();
  a1.sound();
  a2.sound();

  // Payment
  makePayment(Cash());
  makePayment(CreditCard());

  // Shapes
  List<Shape> shapes = [Circle(5), Rectangle(4, 6)];

  for (var s in shapes) {
    print("Area: ${s.area()}");
  }

  // // Notifications
  List<Notification> notifications = [Email(), SMS(), PushNotification()];

  for (var n in notifications) {
    n.send();
  }
}

// ============================================
// Polymorphism in OOP - Dart Full Tutorial
// ============================================

// Definition:
// Polymorphism means "many forms"
// نفس الدالة لكن سلوك مختلف حسب الكائن

// ============================================
// Basic Example
// ============================================

class Animal {
  void sound() {
    print("Animal makes sound");
  }
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
// Runtime Polymorphism
// ============================================

void runtimeExample() {
  Animal a;

  a = Dog();
  a.sound();

  a = Cat();
  a.sound();
}

// Task 2:
// Why does the output change even though type is Animal?

// ============================================
// Shapes Example
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
// Employee Example
// ============================================

class Employee {
  double calculateSalary() {
    return 0;
  }
}

class Developer extends Employee {
  @override
  double calculateSalary() {
    return 5000;
  }
}

class Manager extends Employee {
  @override
  double calculateSalary() {
    return 8000;
  }
}

// Task 4:
// Create list of employees and print salaries

// ============================================
// Payment System (Challenge)
// ============================================

abstract class Payment {
  void pay();
}

class Cash extends Payment {
  @override
  void pay() {
    print("Paid using cash");
  }
}

class CreditCard extends Payment {
  @override
  void pay() {
    print("Paid using credit card");
  }
}

class PayPal extends Payment {
  @override
  void pay() {
    print("Paid using PayPal");
  }
}

// Task 5:
// Create list of payments and call pay()

// ============================================
// Main Function
// ============================================

void main() {
  print("=== Polymorphism Demo ===");

  // Basic
  var dog = Dog();
  var cat = Cat();
  dog.sound();
  cat.sound();

  // Runtime
  runtimeExample();

  // Shapes
  List<Shape> shapes = [Circle(5), Rectangle(4, 6)];

  for (var shape in shapes) {
    print("Area: ${shape.area()}");
  }

  // Employees
  List<Employee> employees = [Developer(), Manager()];

  for (var emp in employees) {
    print("Salary: ${emp.calculateSalary()}");
  }

  // Payments
  List<Payment> payments = [Cash(), CreditCard(), PayPal()];

  for (var p in payments) {
    p.pay();
  }
}

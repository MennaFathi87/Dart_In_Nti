// ============================================
// Inheritance in OOP - Dart Full Tutorial
// ============================================

// Definition:
// Inheritance allows a class (child) to inherit properties and methods from another class (parent).

// ============================================
// Basic Syntax
// ============================================

class Parent {
  void show() {
    print("This is parent class");
  }
}

class Child extends Parent {
  // Inherits everything from Parent
}

// ============================================
// Example 1: Without Inheritance (Problem)
// ============================================

class DogWithoutInheritance {
  void eat() {
    print("Dog is eating");
  }
}

class CatWithoutInheritance {
  void eat() {
    print("Cat is eating");
  }
}

// Assignment 1:
// لاحظ التكرار في الدالة eat()
// كيف يمكن تحسين ذلك باستخدام inheritance؟

// ============================================
// Example 2: With Inheritance (Solution)
// ============================================

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {}

class Cat extends Animal {}

// Assignment 2:
// أنشئ object من Dog و Cat واستدعي الدالة eat()

// ============================================
// Adding New Behavior in Child
// ============================================

class DogWithBehavior extends Animal {
  void bark() {
    print("Dog is barking");
  }
}

// Assignment 3:
// استدعي الدالتين eat و bark من object واحد

// ============================================
// Method Overriding
// ============================================

class AnimalSound {
  void sound() {
    print("Animal makes sound");
  }
}

class DogSound extends AnimalSound {
  @override
  void sound() {
    print("Dog barks");
  }
}

// Assignment 4:
// ماذا يحدث إذا لم نستخدم override؟

// ============================================
// Using super keyword
// ============================================

class AnimalSuper {
  void sound() {
    print("Animal sound");
  }
}

class DogSuper extends AnimalSuper {
  @override
  void sound() {
    super.sound();
    print("Dog barks");
  }
}

// Assignment 5:
// ما الفرق بين استخدام super وعدم استخدامه؟

// ============================================
// Constructor Inheritance
// ============================================

class AnimalConstructor {
  String name;

  AnimalConstructor(this.name);
}

class DogConstructor extends AnimalConstructor {
  DogConstructor(String name) : super(name);
}

// Assignment 6:
// أنشئ object من DogConstructor واطبع الاسم

// ============================================
// Real-world Example
// ============================================

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double salary, this.bonus) : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Bonus: $bonus");
  }
}

// Assignment 7:
// أنشئ object من Manager واستدعي displayInfo()

// ============================================
// Multilevel Inheritance
// ============================================

class AnimalMulti {
  void eat() => print("Eating");
}

class Mammal extends AnimalMulti {
  void walk() => print("Walking");
}

class DogMulti extends Mammal {
  void bark() => print("Barking");
}

// Assignment 8:
// استدعي eat و walk و bark من DogMulti

// ============================================
// Polymorphism Example
// ============================================

class AnimalPoly {
  void sound() {
    print("Animal sound");
  }
}

class DogPoly extends AnimalPoly {
  @override
  void sound() {
    print("Dog sound");
  }
}

// Assignment 9:
// جرب:
// AnimalPoly a = DogPoly();
// a.sound();

// ============================================
// Main Function (Run All Examples)
// ============================================

void main() {
  print("=== Inheritance Demo ===");

  // var dog = Dog();
  // dog.eat();

  // var dog2 = DogWithBehavior();
  // dog2.eat();
  // dog2.bark();

  // // var dog3 = DogSound();
  // // dog3.sound();

  // var dog4 = DogSuper();
  // dog4.sound();

  // var dog5 = DogConstructor("Max");
  // print("Dog name: ${dog5.name}");

  // var manager = Manager("Ali", 5000, 2000);
  // manager.displayInfo();

  var dogMulti = DogMulti();
  dogMulti.eat();
  dogMulti.walk();
  dogMulti.bark();

  AnimalPoly a = DogPoly();
  a.sound();
}

// ============================================
// Final Challenge
// ============================================

// Create a system:
// class Shape
// class Circle
// class Rectangle

// Each class should have:
// method: area()

// Circle calculates: pi * r * r
// Rectangle calculates: width * height

// حاول تنفيذ النظام بالكامل وتشغيله في main

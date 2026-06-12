// ============================================
// Encapsulation in OOP - Dart Full Tutorial
// ============================================

//  What is Encapsulation?
// Encapsulation means:
// 1. Hiding data (Data Hiding)
// 2. Controlling access using methods

// ============================================
//  Example WITHOUT Encapsulation
// ============================================

class BadBankAccount {
  double balance = 0;
}

// Assignment 1:
// Try to assign a negative value to balance
// What happens? Why is this dangerous?

// ============================================
//  Example WITH Encapsulation
// ============================================

class BankAccount {
  double _balance = 0; //  private

  // Getter
  double get balance => _balance;

  // Deposit
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print("Invalid deposit amount");
    }
  }

  // Withdraw
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      print("Invalid withdraw amount");
    }
  }
}

// Assignment 2:
// 1. Create object from BankAccount
// 2. Deposit 1000
// 3. Withdraw 200
// 4. Print balance

// ============================================
//  Getter & Setter Example
// ============================================

class Student {
  String _name = "";

  // Getter
  String get name => _name;

  // Setter
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print("Name cannot be empty");
    }
  }
}

// Assignment 3:
// Try:
// student.name = ""
// What happens?

// ============================================
//  Real-world Example
// ============================================

class Product {
  double _price = 0;

  double get price => _price;

  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print("Price cannot be negative");
    }
  }
}

class ProductWithConstructor {
  //Properities
  String _name;
  double _price;

  //Constructor
  ProductWithConstructor(this._name, this._price);

  //Get name, price
  double get price => _price;

  String get name => _name;

  //Set name, price
  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print("Price cannot be negative");
    }
  }

  set name(String name) {
    if (name.isNotEmpty) {
      _name = name;
    } else {
      print("Name cannot be Empty");
    }
  }
}

// Assignment 4:
// 1. Set price to 500
// 2. Set price to -100
// What is the output?

// ============================================
//  MAIN FUNCTION (Run All)
// ============================================

void main() {
  print("=== Encapsulation Demo ===");

  var account = BankAccount();
  account.deposit(1000);
  account.withdraw(300);
  print("Balance: ${account.balance}");

  var student = Student();
  student.name = "";
  print("Student name: ${student.name}");

  var product1 = Product();
  product1.price = -200;
  print("Product price: ${product1.price}");

  var product2 = ProductWithConstructor("Smart Phone", 7000);
  print(product2.price);
}

// ============================================
//  FINAL ASSIGNMENT (Challenge)
// ============================================

// Create a class called User:
// - private variable: _age
// - getter: age
// - setter: age
// شرط:
// age must be between 1 and 120

// Bonus:
// Add method printUserInfo()

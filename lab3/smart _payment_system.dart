// ============================================
// OOP Full Project: Smart Payment System
// ============================================

// ============================================
// 1. Encapsulation
// ============================================
class User {
  String _name;
  double _balance;

  User(this._name, this._balance);

  String get name => _name;
  double get balance => _balance;

  void addBalance(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  bool deductBalance(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      return true;
    }
    return false;
  }
}

// ============================================
// 2. Abstraction
// ============================================

abstract class Payment {
  void pay(User user, double amount);
}

// ============================================
// 3. Inheritance + Polymorphism
// ============================================

class CashPayment extends Payment {
  @override
  void pay(User user, double amount) {
    if (user.deductBalance(amount)) {
      print("Paid $amount using Cash");
    } else {
      print("Insufficient balance");
    }
  }
}

class CreditCardPayment extends Payment {
  @override
  void pay(User user, double amount) {
    print("Paid $amount using Credit Card");
  }
}

class PayPalPayment extends Payment {
  @override
  void pay(User user, double amount) {
    print("Paid $amount using PayPal");
  }
}

// ============================================
// 4. Processor (Uses Polymorphism)
// ============================================

class PaymentProcessor {
  void process(Payment payment, User user, double amount) {
    payment.pay(user, amount);
  }
}

// ============================================
// Main Function
// ============================================

void main() {
  print("=== Smart Payment System ===");

  User user = User("Ali", 1000);

  PaymentProcessor processor = PaymentProcessor();

  // Polymorphism in action
  processor.process(CashPayment(), user, 200);
  processor.process(CreditCardPayment(), user, 500);
  processor.process(PayPalPayment(), user, 300);

  print("Remaining Balance: ${user.balance}");
}

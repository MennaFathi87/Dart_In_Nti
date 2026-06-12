import 'object_oriented.dart';

void encapsulationDemo() {
  BankAccount account = BankAccount();
  account.deposit(1000);
  print(account.balance);

  print(account.balance);

  account.name = "Ibrahim";

  print(account.name);

  // TODO: Add withdraw method with validation, test it
  // MINI CHALLENGE: Prevent withdrawal if balance < amount
}

void main() {
  // classAndObjectDemo();
  //constructorDemo();
  //namedConstructorDemo();
  // encapsulationDemo();
  inheritanceDemo();
  // polymorphismDemo();
  // abstractClassDemo();
  // interfaceDemo();
  // mixinDemo();
}

void main() {
  // double balance = 1000;
  // double amount = 400;
  // balance -= amount;
  // if (amount <= balance) {
  //   print("You withdraw $amount");
  // } else {
  //   print("Insufficient Blance...");
  // }

  List<double> products = [120, 34, 45.5];
  double sum = 0.0;
  for (var product in products) {
    sum += product;
  }
  print(sum);
}

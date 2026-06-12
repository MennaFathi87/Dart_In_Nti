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

void makepayment(Payment p) {
  p.pay();
}

void main() {
  makepayment(Cash());
}

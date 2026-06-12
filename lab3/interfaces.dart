abstract class Flyable {
  void fly();
  void land();
}

class Bird implements Flyable {
  @override
  void fly() {
    print('Bird is flying');
  }
  void land() {
    print('Bird is landing');
  }
}

class Plane implements Flyable {
  @override
  void fly() {
    print('Plane is flying');
  }
  void land() {
    print('Plane is landing');
  }
}

void interfaceDemo() {
  Flyable bird = Bird();
  bird.fly();

  // TODO: Create Plane class implementing Flyable, call fly()
  Flyable plane = Plane();
  plane.fly();
  // MINI CHALLENGE: Add land() method to Flyable interface, implement in Bird and Plane
}

// abstract class is a aclass cannot be create object
// لو  استخدم فانشكن بيجبر الكل يكتبها
abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() => 3.14 * radius * radius;
}

// rectangle class
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

void abstractClassDemo() {
  Shape shape = Circle(5);
  print(shape.calculateArea());
  Shape rectangle = Rectangle(4, 6);
  print(rectangle.calculateArea());
  // TODO: Add Rectangle class extending Shape, implement calculateArea()
  // MINI CHALLENGE: Create a list of Shape objects (Circle + Rectangle) and calculate total area
}

void areaDemo() {
  List<Shape> shapes = [
    Circle(5),
    Rectangle(4, 6),
    Circle(3),
  ];

  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.calculateArea();
  }
  print(totalArea);
}

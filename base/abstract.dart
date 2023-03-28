abstract class Shape {
  void draw();
}

class Circle extends Shape {
  void draw() {
    print('Drawing a circle');
  }
}

class Rectangle extends Shape {
  void draw() {
    print('Drawing a rectangle');
  }
}

void main() {
  var circle = Circle();
  var rectangle = Rectangle();

  circle.draw(); // Output: Drawing a circle
  rectangle.draw(); // Output: Drawing a rectangle
}

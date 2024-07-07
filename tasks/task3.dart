import 'dart:math';

abstract class Shape {
  double area();
}


class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double height;
  double width;

  Rectangle(this.height, this.width);

  @override
  double area() {
    return height * width;
  }
}


void printArea(Shape sh) {
  print('Area is: ${sh.area()}');
}

void main() {
  Shape circle = Circle(4);
  Shape rectangle = Rectangle(2, 5);

  printArea(circle);
  printArea(rectangle);
}
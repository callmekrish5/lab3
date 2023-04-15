// 6. Write a dart program demonstrating the use of an abstract class.
void main() {

}
abstract class Shape {
  double calculateArea();
}

// Rectangle class extending Shape
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }
}


class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}


print(){
  // Creating objects of Rectangle and Circle
  Rectangle rect = Rectangle(5, 7);
  Circle circle = Circle(4);

  // Displaying area
  ('Area of Rectangle: ${rect.calculateArea()}');
  ('Area of Circle: ${circle.calculateArea()}');
}
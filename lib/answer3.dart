//Write a dart program to create a class Animal with properties [id, name, color]. 
//Create another class called Cat and extends it from Animal. Add new properties sound in String. Create an object of a Cat and print all details.

class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);

  void printDetails() {
    print('ID: $id, Name: $name, Color: $color');
  }
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  @override
  void printDetails() {
    print('ID: $id, Name: $name, Color: $color, Sound: $sound');
  }
}

void main() {
  Cat cat = Cat(1, 'Robert', 'Black', 'Meow Meow');
  cat.printDetails();
}

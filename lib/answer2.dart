//2. Write a dart program to create a class House with properties [id, name, prize].
class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void printDetails() {
    print('ID: $id, Name: $name, Price: \$$price');
  }
}

void main() {
  List<House> houses = [
    House(1, 'KTM CITY', 5000),
    House(2, 'Villa', 15000),
    House(3, 'House', 12000),
  ];

  for (House house in houses) {
    house.printDetails();
  }
}




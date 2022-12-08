// Create hybrid inheritance in dart
class Cars {
  String name;
  String color;
  int price;
  Cars(this.name, this.color, this.price);
  void show() {
    print("Name: $name");
    print("Color: $color");
    print("Price: $price");
  }
}

class Supra extends Cars {
  String model;
  Supra(String name, String color, int price, this.model) : super(name, color, price);
  void show() {
    super.show();
    print("Model: $model");
  }
}

void main() {
  Supra s = Supra("Toyota", "Red", 1000000, "Supra");
  s.show();
}
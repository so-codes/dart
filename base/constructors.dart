class Customer {
  String name = "";
  int age = 0;
  String location = "";

  Customer(String name, int age, String location) {
    this.name = name;
    this.age = age;
    this.location = location;
  }

  Customer.sin(this.name, this.age, this.location);
}

void main(List<String> args) {
  var c = new Customer("Kurizu", 19, "japan");
  var csin = new Customer.sin("Pocky", 20, "poop");
  print(c.name + " " + c.age.toString() + " " + c.location);
  print(csin.name + " " + csin.age.toString() + " " + csin.location);
}

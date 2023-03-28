class Person {
  String _name = "";
  int _age = 1;

  String get name => _name;
  set name(String value) => _name = value;

  int get age => _age;
  set age(int value) => value <= 0 ? print('error') : _age = value;
}

void main() {
  var person = Person();

  person.name = 'John';
  person.age = 25;

  print('Name: ${person.name}, Age: ${person.age}');
}

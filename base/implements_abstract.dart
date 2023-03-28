void main() {
  var dog = Dog();
  var cat = Cat();

  dog.makeSound();
  cat.makeSound();
}

class Dog implements Animal {
  void makeSound() {
    print('Woof!');
  }
}

class Cat implements Animal {
  void makeSound() {
    print('Meow!');
  }
}

abstract class Animal {
  void makeSound();
}

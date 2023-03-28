class School {
  String name = "";
  void poop() {
    print("hi");
  }
}

class Student extends School {
  @override
  void sdisplay() {
    String sname = super.name;
  }

  String name = "";
  int age = 0;

  void display() {
    print(name + " " + age.toString());
  }
}

class Student2 extends School {
  @override
  void sdisplay() {
    String sname = super.name;
  }

  String name = "";
  int age = 0;

  void display() {
    print(name + " " + age.toString());
  }
}

void main() {
  // Student s = new Student();
  var s1 = new Student();
  s1.name = "Kurizu";
  s1.age = 19;
  s1.sdisplay();
  s1.display();
  s1.poop();
}

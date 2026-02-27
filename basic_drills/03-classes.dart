// declaring instance variables
class Point {
  double? x;
  double? y;
}

// void main() {
//   var point = Point();
//   point.x = 4;
//   assert(point.x == 4);
//   assert(point.y == null);
// }

// implicit interfaces
class Person {
  final String _name;

  Person(this._name);
  String greet(String who) => 'Hello $who. I am $_name';
}

class Impostor implements Person {
  String get _name => '';
  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

// void main() {
//   print(greetBob(Person('Joshua')));
//   print(greetBob(Impostor()));
// }

// basic structure
class Robot {
  String? name;
  int? batteryLevel;

  // method
  void sayHello() {
    print("Hi, I am $name. My battery is at $batteryLevel%");
  }
}

// standard using of constructor
class RobotConstruct {
  String? name;
  int? batteryLevel;

  RobotConstruct(this.name, this.batteryLevel);

  // method
  void sayHello() {
    print("Hi, I am $name. My battery is at $batteryLevel%");
  }

  void main() {
    var bot1 = RobotConstruct("RoboCap", 100);
    var bot2 = RobotConstruct("Wall-E", 20);

    bot1.sayHello();
    bot2.sayHello();
  }
}

// THe .this method (modern call)
//old way
class User {
  String name;

  User(String inputName) {
    name = inputName;
  }
}

class User {
  String name;

  User(this.name);
}

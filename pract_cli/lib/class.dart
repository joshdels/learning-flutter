class Person {
  final String name;
  final int age;

  // Const Constructor
  const  Person(this.name, this.age);

  // Name Constructor
  Person.guest(String name)
    : name = name,
      age = 0;
      

  @override
  String toString() => 'Person(name: $name, age: $age)';

  void introduce() {
    print('Hi Im $name and im $age');
  }
}
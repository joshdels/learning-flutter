// Encapsulation
class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    if (amount > 0) _balance += amount; // balance cannot be seen
  }

  double get currentBalance => _balance;
}


// c++ concepts
// Encapsulation
class C++ {
private:
    double balance = 0;
public:
    void deposit(double amount) { ... }
};

class BankAccount {
  // PRIVATE: The underscore makes this private to this file
  double _balance = 0;

  // PUBLIC: No underscore, so anyone can call this
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount; 
      _logTransaction(); // Calling a private method
    }
  }

  // PRIVATE METHOD: Only usable inside this file
  void _logTransaction() {
    print("Balance updated.");
  }

  // PUBLIC GETTER: A "read-only" way to see the private variable
  double get currentBalance => _balance;
}


// Inheritance(extends)
class Animal {
  void breathe() => print("Inhale... Exhale");
}

class Cat extends Animal {
  void meow() => print("Meow!");
}

// Polymorphism (@override)
class Shape {
  void draw() => print("Drawing");
}

class Circle extends Shape {
  @override
  void draw() => print("Drawing a circle O");
}

// Abstraction
abstract class Appliance {
  void turnOn();
}

class Toaster extends Appliance {
  @override
  void turnOn() => print("Heating coils..."); // nanginabuhi man ni oiii lol
}

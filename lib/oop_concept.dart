//class and object
import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

class Car { // Class names in Dart follow PascalCase convention
  String brand; // Use 'String' instead of 'string'
  int year;

  Car(this.brand, this.year); // Constructor

  void displayInfo() {
    print('Brand: $brand, Year: $year');
  }
}

void main() {
  Car myCar = Car('Tesla', 2022); // Use proper class name and constructor
  myCar.displayInfo(); // Call the method
}


//Encapsulation
//restrict direct access to some of object component and provide access using getter and setter
class Account{
  String _accountNumber;

  Account(this._accountNumber);

  String get accountNumber => _accountNumber;
  set accountNumber(String value){
    if(value.isNotEmpty){
      _accountNumber = value;
    }
  }
}

void main(){
  Account acc = Account('12345');
  print(acc.accountNumber); // Output: 12345
  acc.accountNumber = '67890';
  print(acc.accountNumber); // Output: 67890
}

//Getter
class Person {
  String _name; // Private field (by convention, starts with an underscore)

  Person(this._name);

  // Getter to access the private field
  String get name => _name;
}

void main() {
  Person person = Person('Alice');
  print(person.name); // Output: Alice
}



//setter
class Person {
  String _name;

  Person(this._name);

  // Setter to update the private field
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print('Name cannot be empty.');
    }
  }

  // Getter for the private field
  String get name => _name;
}

void main() {
  Person person = Person('Alice');
  print(person.name); // Output: Alice

  person.name = 'Bob'; // Update using the setter
  print(person.name); // Output: Bob

  person.name = ''; // Attempt to set an invalid value
  // Output: Name cannot be empty.
}


//example of getter and setter in bank account
class BankAccount {
  double _balance = 0.0;

  // Getter for balance
  double get balance => _balance;

  // Setter for balance with validation
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print('Balance cannot be negative.');
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  account.balance = 100.0; // Set balance
  print(account.balance);  // Output: 100.0

  account.balance = -50.0; // Invalid balance
  // Output: Balance cannot be negative.
}


//Inheritance
class Animal {
  void sound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barks');
  }
}

void main() {
  Dog dog = Dog();
  dog.sound(); // Output: Dog barks
}


//Polymorphism
class Shape {
  void draw() {
    print('Drawing a shape');
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

void main() {
  Shape shape = Circle(); // Polymorphism
  shape.draw(); // Output: Drawing a circle
}


//example of polymorphism in terms of animals
class Animal {
  void speak() {
    print('An animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print('The dog barks');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('The cat meows');
  }
}

class Cow extends Animal {
  @override
  void speak() {
    print('The cow moos');
  }
}

void main() {
  // Parent class reference pointing to child class objects
  Animal animal;

  animal = Dog();
  animal.speak(); // Output: The dog barks

  animal = Cat();
  animal.speak(); // Output: The cat meows

  animal = Cow();
  animal.speak(); // Output: The cow moos
}


//Abstraction
abstract class Vehicle {
  void start(); // Abstract method
}

class Bike extends Vehicle {
  @override
  void start() {
    print('Bike starts');
  }
}

void main() {
  Bike bike = Bike();
  bike.start(); // Output: Bike starts
}



//Abstraction example with animals
// Abstract class
abstract class Animal {
  void speak(); // Abstract method (no implementation)
}

class Dog extends Animal {
  @override
  void speak() {
    print('The dog barks');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('The cat meows');
  }
}

class Cow extends Animal {
  @override
  void speak() {
    print('The cow moos');
  }
}

void main() {
  // Using child classes to implement the abstract method
  Animal dog = Dog();
  dog.speak(); // Output: The dog barks

  Animal cat = Cat();
  cat.speak(); // Output: The cat meows

  Animal cow = Cow();
  cow.speak(); // Output: The cow moos
}

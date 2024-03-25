import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Base class
class AnimalBase {
  String name;
  
  AnimalBase(this.name);
  
  void eat() {
    print('$name is eating.');
  }
}

// Subclass implementing interface and overriding method
class Dog extends AnimalBase implements Animal {
  Dog(String name) : super(name);
  
  @override
  void makeSound() {
    print('$name says: Woof!');
  }
}

// Class initialized with data from a file
class Cat extends AnimalBase implements Animal {
  Cat(String name) : super(name);
  
  @override
  void makeSound() {
    print('$name says: Meow!');
  }
  
  void printFromFile(File file) {
    List<String> lines = file.readAsLinesSync();
    lines.forEach((line) => print(line));
  }
}

void main() {
  // Creating instances of classes
  var dog = Dog('Buddy');
  var cat = Cat('Whiskers');
  
  // Demonstrating the use of loop
  for (int i = 0; i < 3; i++) {
    cat.eat();
    dog.eat();
  }
  
  // Printing sounds
  dog.makeSound();
  cat.makeSound();
  
  // Initializing instance with data from a file
  var file = File('data.txt');
  cat.printFromFile(file);
}

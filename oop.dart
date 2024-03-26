import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Base class implementing Animal interface
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof Woof!');
  }
}

// Derived class extending Dog class
class Labrador extends Dog {
  @override
  void makeSound() {
    print('Labrador says: Woof Woof!');
  }
}

// Class with a method to initialize data from a file
class AnimalFileReader {
  List<String> readDataFromFile(String fileName) {
    List<String> data = [];
    File file = File(fileName);
    if (file.existsSync()) {
      file.readAsLinesSync().forEach((line) {
        data.add(line);
      });
    }
    return data;
  }
}

void main() {
  // Instantiate Labrador class
  Labrador labrador = Labrador();

  // Override method from base class
  labrador.makeSound();

  // Instantiate AnimalFileReader class
  AnimalFileReader fileReader = AnimalFileReader();

  // Initialize data from a file
  List<String> fileData = fileReader.readDataFromFile('animals.txt');

  // Print data from file
  print('Data from file:');
  fileData.forEach((line) {
    print(line);
  });

  // Method demonstrating the use of a loop
  print('\nCounting from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

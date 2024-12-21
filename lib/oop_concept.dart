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



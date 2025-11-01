// question4.dart
// Question 4: Inheritance & Polymorphism

abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle({required this.brand, required this.model, required this.year});

  void start();
  void stop();

  void displayInfo() {
    // Default display; subclasses can override if they want custom formatting
    print('Vehicle Info: $year $brand $model');
  }

  int calculateAge([int? currentYear]) {
    int now = currentYear ?? DateTime.now().year;
    return now - year;
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car({
    required String brand,
    required String model,
    required int year,
    required this.numberOfDoors,
  }) : super(brand: brand, model: model, year: year);

  @override
  void start() => print('Starting the car engine...');

  @override
  void stop() => print('Stopping the car engine...');

  @override
  void displayInfo() {
    print('Vehicle Info: $year $brand $model (${numberOfDoors} doors)');
  }
}

class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle({
    required String brand,
    required String model,
    required int year,
    required this.hasWindshield,
  }) : super(brand: brand, model: model, year: year);

  @override
  void start() => print('Starting the motorcycle engine...');

  @override
  void stop() => print('Stopping the motorcycle engine...');

  @override
  void displayInfo() {
    print('Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)');
  }
}

void main() {
  List<Vehicle> vehicles = [
    Car(brand: 'Toyota', model: 'Camry', year: 2020, numberOfDoors: 4),
    Motorcycle(brand: 'Honda', model: 'CBR', year: 2021, hasWindshield: true),
  ];

  for (var v in vehicles) {
    v.displayInfo();
    v.start();
    v.stop();
    print('');
  }

  // If you want example ages that match the assignment example (Car age: 4 years, Motorcycle age: 3 years),
  // provide a fixed reference year (e.g., 2024).
  int referenceYear = 2024;
  print('Car age: ${vehicles[0].calculateAge(referenceYear)} years');
  print('Motorcycle age: ${vehicles[1].calculateAge(referenceYear)} years');
}

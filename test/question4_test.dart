import 'package:test/test.dart';
import '../question4.dart';

void main() {
  test('Car and Motorcycle start/stop', () {
    var car = Car(brand: 'Toyota', model: 'Camry', year: 2020, numberOfDoors: 4);
    var moto = Motorcycle(brand: 'Honda', model: 'CBR', year: 2021, hasWindshield: true);

    // Check age calculation
    expect(car.calculateAge(2024), 4);
    expect(moto.calculateAge(2024), 3);

    // Check displayInfo output types
    expect(car.displayInfo, isA<Function>());
    expect(moto.displayInfo, isA<Function>());
  });
}

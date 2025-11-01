import 'package:test/test.dart';
import '../question1.dart'; // relative path to your Dart file

void main() {
  test('BMI calculation', () {
    double bmi = calculateBMI(72.8, 5.9);
    expect(bmi.toStringAsFixed(1), '22.5');
  });

  test('Grade calculation', () {
    expect(getGrade(85), 'B');
  });
}

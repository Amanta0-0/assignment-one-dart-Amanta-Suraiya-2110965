// question1.dart
// Question 1: Basic Data Types & Functions

double calculateBMI(double weightKg, double heightFeet) {
  // Convert height in feet to meters (1 foot = 0.3048 m).
  double heightMeters = heightFeet * 0.3048;
  if (heightMeters <= 0) return 0.0;
  return weightKg / (heightMeters * heightMeters);
}

String getGrade(int score) {
  if (score >= 90 && score <= 100) return 'A';
  if (score >= 80 && score <= 89) return 'B';
  if (score >= 70 && score <= 79) return 'C';
  if (score >= 60 && score <= 69) return 'D';
  return 'F';
}

void main() {
  // Example variables
  String name = 'John Doe';
  int age = 25;
  double height = 5.9; // in feet (as example)
  bool isStudent = true;

  // choose weight so BMI is close to expected 22.5 with height 5.9 ft
  double weightKg = 72.8;

  double bmi = calculateBMI(weightKg, height);
  int sampleScore = 85;
  String grade = getGrade(sampleScore);

  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  // Round BMI to 1 decimal like example
  print('BMI: ${bmi.toStringAsFixed(1)}');
  print('Grade: $grade');
}

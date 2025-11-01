// question2.dart
// Question 2: Collections & Control Flow

import 'dart:math';

void main() {
  List<String> students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  Map<String, int> scores = {};

  // Use a fixed seed for reproducible results during testing
  Random rng = Random(42);

  // Assign random scores between 60 and 100 inclusive
  for (var student in students) {
    int score = rng.nextInt(41) + 60; // 0..40 + 60 => 60..100
    scores[student] = score;
  }

  print('Assigned scores:');
  scores.forEach((k, v) => print('  $k : $v'));

  // Find highest and lowest
  String highestStudent = scores.keys.first;
  String lowestStudent = scores.keys.first;
  int highestScore = scores[highestStudent]!;
  int lowestScore = scores[lowestStudent]!;

  int total = 0;
  scores.forEach((name, score) {
    total += score;
    if (score > highestScore) {
      highestScore = score;
      highestStudent = name;
    }
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = name;
    }
  });

  double average = total / scores.length;

  print('\nHighest: $highestStudent with $highestScore');
  print('Lowest: $lowestStudent with $lowestScore');
  print('Average score: ${average.toStringAsFixed(2)}');

  // Categorize with switch (using tens digit)
  print('\nCategories:');
  scores.forEach((name, score) {
    String category;
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = 'Excellent';
        break;
      case 8:
        category = 'Good';
        break;
      case 7:
        category = 'Average';
        break;
      default:
        category = 'Needs Improvement';
    }
    print('  $name ($score): $category');
  });
}

// question2.dart
// Question 2: Collections & Control Flow

import 'dart:math';

// Global variables for testing
List<String> students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
Map<String, int> scores = {};
String highestStudent = '';
String lowestStudent = '';
int highestScore = 0;
int lowestScore = 0;
double average = 0.0;

// Function to assign random scores and compute stats
void assignScores() {
  Random rng = Random(42); // fixed seed for reproducibility

  // Assign scores 60..100
  for (var student in students) {
    scores[student] = rng.nextInt(41) + 60;
  }

  // Initialize highest/lowest
  highestStudent = students.first;
  lowestStudent = students.first;
  highestScore = scores[highestStudent]!;
  lowestScore = scores[lowestStudent]!;

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

  average = total / scores.length;
}

// Optional: categorize student scores
Map<String, String> categorizeStudents() {
  Map<String, String> categories = {};
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
    categories[name] = category;
  });
  return categories;
}

void main() {
  assignScores();

  print('Assigned scores:');
  scores.forEach((k, v) => print('  $k : $v'));

  print('\nHighest: $highestStudent with $highestScore');
  print('Lowest: $lowestStudent with $lowestScore');
  print('Average score: ${average.toStringAsFixed(2)}');

  print('\nCategories:');
  var categories = categorizeStudents();
  categories.forEach((name, category) {
    print('  $name (${scores[name]}): $category');
  });
}

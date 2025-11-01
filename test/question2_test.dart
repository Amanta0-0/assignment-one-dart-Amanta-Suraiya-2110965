import 'package:test/test.dart';
import '../question2.dart';

void main() {
  // Run assignment before testing
  assignScores();

  test('Students list has 5 students', () {
    expect(students.length, 5);
  });

  test('Scores are between 60 and 100', () {
    scores.forEach((name, score) {
      expect(score, inInclusiveRange(60, 100));
    });
  });

  test('Highest and lowest score calculations', () {
    int maxScore = scores.values.reduce((a, b) => a > b ? a : b);
    int minScore = scores.values.reduce((a, b) => a < b ? a : b);
    expect(highestScore, maxScore);
    expect(lowestScore, minScore);
  });

  test('Average is correctly calculated', () {
    double expectedAvg = scores.values.reduce((a, b) => a + b) / scores.length;
    expect(average, closeTo(expectedAvg, 0.01));
  });

  test('Categorization works correctly', () {
    var categories = categorizeStudents();
    categories.forEach((name, category) {
      int score = scores[name]!;
      if (score >= 90) expect(category, 'Excellent');
      else if (score >= 80) expect(category, 'Good');
      else if (score >= 70) expect(category, 'Average');
      else expect(category, 'Needs Improvement');
    });
  });
}

import 'package:test/test.dart';
import '../question5.dart';

void main() {
  test('Manager salary calculation', () {
    var manager = Manager(name: 'John Smith', id: 'M001', department: 'IT', teamSize: 5);
    double salary = manager.calculateSalary(manager.getBaseSalary(), 1000.0);
    expect(salary, 9000.0);
  });

  test('Developer salary calculation', () {
    var dev = Developer(name: 'Alice Johnson', id: 'D001', department: 'IT', programmingLanguage: 'Dart');
    double salary = dev.calculateSalary(dev.getBaseSalary(), 500.0);
    expect(salary, 6500.0);
  });

  test('Manager report generation', () {
    var manager = Manager(name: 'John Smith', id: 'M001', department: 'IT', teamSize: 5);
    String report = manager.generateReport(manager.name, manager.department);
    expect(report, 'Monthly report for John Smith in IT department');
  });
}

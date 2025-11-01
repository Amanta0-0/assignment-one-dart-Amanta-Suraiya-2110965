// test/question3_test.dart
import 'package:test/test.dart';
import '../question3.dart';

void main() {
  group('BankAccount tests', () {
    late BankAccount account1;
    late BankAccount account2;

    setUp(() {
      account1 = BankAccount(accountNumber: '12345', accountHolder: 'Alice', accountType: 'Savings');
      account2 = BankAccount(accountNumber: '67890', accountHolder: 'Bob', accountType: 'Checking');
    });

    test('Deposit increases balance', () {
      account1.deposit(1500.0);
      account2.deposit(800.0);

      expect(account1.balance, 1500.0);
      expect(account2.balance, 800.0);
    });

    test('Withdraw decreases balance if sufficient funds', () {
      account1.deposit(1000.0);
      account1.withdraw(500.0);
      expect(account1.balance, 500.0);
    });

    test('Withdraw does not allow insufficient funds', () {
      account2.deposit(500.0);

      // Attempt to withdraw more than balance
      account2.withdraw(1000.0);

      // Balance should remain unchanged
      expect(account2.balance, 500.0);
    });

    test('Display account info works', () {
      account1.deposit(1500.0);
      // just call it, no need to assert print
      account1.displayAccountInfo();
      account2.deposit(800.0);
      account2.displayAccountInfo();
    });
  });
}

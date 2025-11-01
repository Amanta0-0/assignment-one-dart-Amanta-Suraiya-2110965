// question3.dart
// Question 3: Classes & Objects

class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  BankAccount({
    required this.accountNumber,
    required this.accountHolder,
    required this.accountType,
    this.balance = 0.0,
  });

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print('Insufficient funds for withdrawal of $amount from account $accountNumber');
    } else {
      balance -= amount;
    }
  }

  void displayAccountInfo() {
    print('Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance');
  }
}

void main() {
  // Create two accounts
  var account1 = BankAccount(accountNumber: '12345', accountHolder: 'Alice', accountType: 'Savings');
  var account2 = BankAccount(accountNumber: '67890', accountHolder: 'Bob', accountType: 'Checking');

  // Perform deposits
  account1.deposit(1500.0);
  account2.deposit(800.0);

  // Display account details
  account1.displayAccountInfo();
  account2.displayAccountInfo();

  // Attempt invalid withdrawal to show insufficient funds
  account2.withdraw(1000.0);
}

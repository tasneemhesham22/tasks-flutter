
class OverdraftException implements Exception {
  String errorMessage() => 'Withdrawal amount exceeds account balance.';
}

class BankAccount {
  double balance = 0;

  BankAccount(double initialBalance) {
    if (initialBalance < 0) {
      throw ArgumentError('Initial balance cannot be negative');
    }
    balance = initialBalance;
  }

  void deposit(double amount) {
    if (amount < 0) {
      throw ArgumentError('Deposit amount cannot be negative');
    }
    balance += amount;
    print('Deposited: $amount');
    print('Current Balance: $balance');
  }

  void withdraw(double amount) {
    if (amount < 0) {
      throw ArgumentError('Withdraw amount cannot be negative.');
    }
    if (balance < amount) {
      throw OverdraftException();
    }
    balance -= amount;
    print('Withdrawn: $amount');
    print('Current Balance: $balance');
  }

  double getBalance() {
    return balance;
  }
}

void main() {
  try {
    BankAccount account = BankAccount(1000);
    print('Initial Balance: ${account.getBalance()}');

    account.deposit(700);
    account.withdraw(100);
    account.withdraw(1800);
  } catch (e) {
    print('Exception occurred: $e');
  }
}
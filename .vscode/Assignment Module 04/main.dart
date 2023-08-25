import 'dart:io';

abstract class Account {
  late int accountNumber;
  late double balance;

  getAccountNumber(int accountNumber) {
    this.accountNumber = accountNumber;
  }

  getBalance(double balance) {
    this.balance = balance;
  }

  void deposit(double amount) {
    print('Depositing amount : $amount tk');
    balance += amount;
    print('After depositing balance: $balance tk.');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount({
    required int accountNumber,
    required double balance,
    required this.interestRate,
  }) {
    getAccountNumber(accountNumber);
    getBalance(balance);
  }

  @override
  void withdraw(double amount) {
    print('Requesting to withdraw amount: $amount tk.');

    if (amount > balance) {
      print('Transaction Not Possible! Insufficient Fund!!');
    } else {
      stdout.write('Withdraw Successfull!! ');
      balance -= amount;
      double applyInterest = (balance * (interestRate / 100));
      print(
          'Applying Interest Rate $interestRate% = $applyInterest tk. to Remaining balance : $balance tk.');
      balance += applyInterest;
    }
    print('Saving Account Balance: $balance tk.');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(
      {required int accountNumber,
      required double balance,
      required this.overdraftLimit}) {
    getAccountNumber(accountNumber);
    getBalance(balance);
  }

  @override
  void withdraw(double amount) {
    print('Requesting to withdraw amount: $amount tk.');

    if (amount <= (balance + overdraftLimit)) {
      balance -= amount;
      print('Withdrawal successful!! ');
    } else {
      print('Transaction Not Possible! Insufficient Fund!!');
    }
    print('Current Account Balance: $balance tk.');
  }
}

void main() {
  SavingsAccount savingsAccount =
      SavingsAccount(accountNumber: 123, balance: 25000, interestRate: 10);

  print('Savings Account Balance: ${savingsAccount.balance} tk.');
  savingsAccount.deposit(10000);
  savingsAccount.withdraw(30000);

  print('\n');

  CurrentAccount currentAccount =
      CurrentAccount(accountNumber: 1234, balance: 5000, overdraftLimit: 500);

  print(
      'Current Account Balance: ${currentAccount.balance} tk. , OverdraftLimit : ${currentAccount.overdraftLimit} tk.');
  currentAccount.deposit(2000);
  currentAccount.withdraw(7500);
}

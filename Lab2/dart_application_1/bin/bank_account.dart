class BankAccount {

  String accountNumber;
  double balance;
  BankAccount(this.accountNumber, this.balance);

  //////////////////////////////////////
  ///Геттер и Сеттер?

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Успешно положено \$${amount.toStringAsFixed(2)}');
    } else {
      print('ОШИБКА, неверная сумма для взноса');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && balance >= amount) {
      balance -= amount;
      print('Успешно снято \$${amount.toStringAsFixed(2)}');
    } else {
      print('ОШИБКА, на вашем счету не достаточно средств.');
    }
  }

  ////////////////////////////////////////////////

  void displayBalance() {
    print('Ваш идентификатор: $accountNumber');
    print('Ваш баланс: \$${balance.toStringAsFixed(2)}');
  }
}
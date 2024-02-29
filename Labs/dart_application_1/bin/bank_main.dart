import 'bank_account.dart';
import 'dart:io';

BankAccount myAccount = BankAccount('17', 1000.0);

void main() {

  myAccount.displayBalance(); // Отображать баланс

  print('Введите операцию');
  print('1. положить');
  print('2. снять');
  int operation = int.parse(stdin.readLineSync()!);


switch(operation) {
    case 1:
      print('//Введите вносимую сумму//');
      double depositing = double.parse(stdin.readLineSync()!);
      myAccount.deposit(depositing);
      break;
    case 2:
      print('//Введите сумму что вы хотите снять//');
      double withdrawal = double.parse(stdin.readLineSync()!);
      myAccount.withdraw(withdrawal);
      break;
    default:
      print('ОШИБКА!!! Выбранной операции нет в списке операций!');
  }

  return main();
}
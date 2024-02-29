import 'dart:io';

void main() {
  double num1, num2;

  /////

  print('Введите первое число:');
  num1 = double.parse(stdin.readLineSync()!);
  
  print('Введите второе число:');
  num2 = double.parse(stdin.readLineSync()!);
  
  /////
  
  print('Выберете операцию:');
  print('1. Суммирование');
  print('2. Отнимание');
  print('3. Умножение');
  print('4. Деление');
  
  int oper = int.parse(stdin.readLineSync()!);
  double result = 0;

  //////
  
  switch(oper) {
    case 1:
      result = num1 + num2;
      print('Ответ: $result');
      break;
    case 2:
      result = num1 - num2;
      print('Ответ: $result');
      break;
    case 3:
      result = num1 * num2;
      print('Ответ: $result');
      break;
    case 4:
      if (num2 == 0) {
        print('На ноль делить нельзя!');
      } else {
        result = num1 / num2;
        print('Ответ: $result');
      }
      break;
    default:
      print('ОШИБКА!!! Выбранной операции нет в списке операций!');
  }
}
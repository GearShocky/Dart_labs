import 'dart:io';

//инвертирование заглавных букв
String flipCases(String str) {
  return str.split('').map((char) {
    if (char == char.toUpperCase()) {
      return char.toLowerCase();
    } else {
      return char.toUpperCase();
    }
  }).join('');
}

//подсчёт символов
int countCharacters(String str) {
  String strvalue = str.replaceAll(' ', '');
  return strvalue.length;
}

void main() {
  //ЗАДАЧА 1

  print('Введите первую строку:');
  String firstString = stdin.readLineSync()!;
  
  print('Введите вторую строку:');
  String secondString = stdin.readLineSync()!;
  
  String combinedString = firstString + secondString;
  print('Объединённая строка: $combinedString');

  //ЗАДАЧА 2

  print('Введите первую строку:');

  String flipvalue = stdin.readLineSync()!;
  String flippedString = flipCases(flipvalue);

  print('Результат: $flippedString');

  
  //ЗАДАЧА 3
  print('Введите текст для подсчёта символов:');
  
  String countValue = stdin.readLineSync()!;
  int charCount = countCharacters(countValue);

  print('Кол-во символов в строке: $charCount');
  
  //ЗАДАЧА 4
  print('Введите текст:');

  String textValue = stdin.readLineSync()!;

  print('Введите слово что вы хотите найти в тексте:');

  String subtext = stdin.readLineSync()!;
  bool found = textValue.contains(subtext);

  print('Слово "$subtext" найдено: $found');
}
import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;
  List<String> numbers = s.trim().split(' ');
  int num1 = int.parse(numbers[0]);
  int num2 = int.parse(numbers[1]);
  print('Before swapping: num1 = $num1, num2 = $num2');
  print('After swapping: num1 = $num2, num2 = $num1');
}

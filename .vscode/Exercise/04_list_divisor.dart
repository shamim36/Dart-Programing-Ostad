/*
Create a program that asks the user for a number and then prints
out a list of all the divisors of that number.
*/

import 'dart:io';

void main() {
  stdout.write('Enter a integer number : ');
  int num = int.parse(stdin.readLineSync()!);

  stdout.write('Divisor of $num are : \n');
  for (int i = 1; i <= num / 2; i++) {
    if (num % i == 0) {
      stdout.write('$i ');
    }
  }
}

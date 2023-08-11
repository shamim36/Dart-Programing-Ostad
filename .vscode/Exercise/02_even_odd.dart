/*
Ask the user for a number. Depending on whether the number is even
or odd,print out an appropriate message to the user.
*/

import 'dart:io';

void main() {
  stdout.write('Enter an Integer number : ');
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print('$num is an odd number.');
  } else {
    print('$num is an even number');
  }
}

/*
Take a list, say for example this one:
  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
and write a program that prints out all the elements 
of the list that are less than 5.
*/

import 'dart:io';

void main() {
  print('Enter the list : ');
  List<String> a = stdin.readLineSync()!.trim().split(' ');

  print('\nOutput less than 5 are : ');
  for (int i = 0; i < a.length; i++) {
    int value = int.parse(a[i]);
    if (value < 5 && i < a.length - 2) {
      stdout.write('$value ');
    } else if (value < 5) {
      print(value);
    }
  }
}

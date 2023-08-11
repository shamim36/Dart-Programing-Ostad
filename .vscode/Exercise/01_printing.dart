/*
Create a program that asks the user to enter their name and their age.
Print out a message that tells how many years they have to be 100 years old.
*/

import 'dart:io';

void main() {
  stdout.write('Enter your name : ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter your age : ');
  int age = int.parse(stdin.readLineSync()!);

  if (age < 100) {
    print('Hi, $name! You\'ll be 100 within ${100 - age} years.');
  } else {
    print('You\'ve already cross 100 years living.');
  }
}

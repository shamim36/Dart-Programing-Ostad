/*
Ask the user for a string and print out whether this string is a 
palindrome or not.
 */

import 'dart:io';

import 'package:test/expect.dart';

void main() {
  stdout.write('Please give a word : ');
  String word = stdin.readLineSync()!;

  String orgWord = word.toLowerCase();
  String revWord = orgWord.split('').reversed.join();

  orgWord == revWord
      ? print('"$word" is Palindrome')
      : print('"$word" is not Palindrome');
}

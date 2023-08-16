import 'dart:io';

void main() {
  List<String> word = stdin.readLineSync()!.toLowerCase().trim().split('');

  for (String a in word) {
    if ('aeiou'.contains(a)) {
      print('The string contains a vowel.');
      exit(0);
    }
  }
  print('The string does not contain any vowel.');
}

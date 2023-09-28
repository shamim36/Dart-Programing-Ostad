import 'dart:io';

void main() {
  int count = 0;
  for (int i = 0; i < 10; i++) {
    String? input = stdin.readLineSync()!;
    String? upperLetter = input.toUpperCase();
    List<String>? arr = upperLetter.split('');

    for (int j = 0; j < arr.length; j++) {
      if (arr[j] == 'T') {
        count++;
        break;
      }
    }
  }
  print(count);
}

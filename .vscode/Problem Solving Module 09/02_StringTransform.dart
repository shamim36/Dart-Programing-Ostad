import 'dart:io';

void main() {
  String? input = stdin.readLineSync()!;
  if (input != null) {
    String result = transformString(input);
    print("$result");
  }
}

String transformString(String input) {
  List<String> arr = input.split('');
  int count = 0;
  String transformedString = '';

  for (int i = 0; i < arr.length; i++) {
    String currentChar = arr[i];
    if (isAlphabetic(currentChar)) {
      if (count == 2) {
        transformedString += currentChar.toUpperCase();
        count = 0;
      } else {
        transformedString += currentChar;
        count++;
      }
    } else {
      transformedString += currentChar;
    }
  }

  return transformedString;
}

bool isAlphabetic(String s) {
  return s.isNotEmpty;
}
//

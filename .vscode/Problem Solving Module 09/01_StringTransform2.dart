import 'dart:io';

void main() {
  String? input = stdin.readLineSync()!;
  List<String>? arr = input.split('');
  int i = 0;
  while (i < arr.length) {
    if (i < arr.length - 2) {
      stdout.write(arr[i] + arr[i + 1] + 'x');
      i++;
      i++;
    } else {
      stdout.write(arr[i]);
      i++;
    }
  }
}

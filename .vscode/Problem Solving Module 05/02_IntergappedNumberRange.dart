import 'dart:io';

void main() {
  String input = stdin.readLineSync()!.trim();
  List<String> inputList = input.split(' ');
  int l1 = int.parse(inputList[0]);
  int r1 = int.parse(inputList[1]);
  int l2 = int.parse(inputList[2]);
  int r2 = int.parse(inputList[3]);

  for (int i = l1; i < l2; i++) {
    stdout.write('$i ');
  }
  for (int i = r2 + 1; i <= r1; i++) {
    if (i == r1) {
      stdout.write('$i\n');
      break;
    }
    stdout.write('$i ');
  }
}

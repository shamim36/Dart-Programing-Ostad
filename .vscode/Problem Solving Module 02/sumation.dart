import 'dart:io';

void main() {
  /*
Input:
The input consists of two integers.

Output:
Output a single line containing the sum of two integers.
  */
  List<String> s = stdin.readLineSync()!.trim().split(' ');

  int num = int.parse(s[0]) + int.parse(s[1]);
  print(num);
}

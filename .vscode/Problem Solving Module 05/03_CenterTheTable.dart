import 'dart:io';

void main() {
  // Read the screen width from input
  int screenWidth = int.parse(stdin.readLineSync()!);

  // Fixed table width
  int tableWidth = 300;

  // Calculate the horizontal position of the table
  int leftMargin = (screenWidth - tableWidth) ~/ 2;

  // Output the result
  print(leftMargin);
}

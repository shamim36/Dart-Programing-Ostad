import 'dart:io';

void main() {
  // Read the image width from input
  int imageWidth = int.parse(stdin.readLineSync()!);

  // Fixed container width
  int containerWidth = 1000;

  // Calculate the left margin
  if (imageWidth % 10 == 0) {
    int leftMargin = (containerWidth - imageWidth) ~/ 2;
    if (leftMargin < 0) {
      print(0);
    } else {
      print(leftMargin);
    }
  } else {
    print(0);
  }
}

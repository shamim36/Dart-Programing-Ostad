import 'dart:io';

void main() {
  int? code = int.parse(stdin.readLineSync()!);

  if (code != null) {
    if (code == 31231) {
      print("Banana");
    } else if (code == 43861) {
      print("Elderberry");
    } else if (code == 82678) {
      print("Honeydew Melon");
    } else if (code == 23456) {
      print("Apple");
    } else if (code == 78901) {
      print("Mango");
    } else if (code == 98765) {
      print("Nectarine");
    } else if (code == 45678) {
      print("Orange");
    } else if (code == 67890) {
      print("Raspberry");
    } else if (code == 21098) {
      print("Tangerine");
    }
  }
}
//

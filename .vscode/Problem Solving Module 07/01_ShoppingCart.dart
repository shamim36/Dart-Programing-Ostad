import 'dart:io';

void main() {
  String? input = stdin.readLineSync()!;
  List<String> arr = input.split(' ');

  if (arr.length == 2) {
    int? code = int.tryParse(arr[0]);
    int? unit = int.tryParse(arr[1]);

    if (code != null && unit != null) {
      if (code == 101) {
        print("${10 * unit}");
      } else if (code == 202) {
        print("${25 * unit}");
      } else if (code == 303) {
        print("${5 * unit}");
      }
    }
  }
}

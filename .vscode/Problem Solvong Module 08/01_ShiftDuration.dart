import 'dart:io';

void main() {
  String? input = stdin.readLineSync()!;
  List<String> arr = input.split(' ');

  int startHour = int.parse(arr[0]);
  int endHour = int.parse(arr[1]);

  if (endHour == startHour) {
    print(24);
  } else if (endHour > startHour) {
    print(endHour - startHour);
  } else {
    print(24 - startHour + endHour);
  }
}

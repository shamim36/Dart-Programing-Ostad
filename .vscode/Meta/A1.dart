import 'dart:io';

void main() {
  String input = stdin.readLineSync()!.trim();
  int n = int.parse(input);

  int total = 0;

  for (int i = 0; i < n; i++) {
    String? burger = stdin.readLineSync()!.trim();
    List<String> decker = input.split(' ');
    int s = int.parse(decker[0]);
    int d = int.parse(decker[1]);
    int k = int.parse(decker[2]);

    int patty = k;
    int bun = k + 2;

    int bunAvailable = s * 2;
    int bunAvailable2 = s * 2;
    int totalBunAvailable = bunAvailable + bunAvailable2;

    int pattyAvailable = d;
    int pattyAvailable2 = d * 2;
    int totalPattyAvailable = pattyAvailable + pattyAvailable2;

    if (totalBunAvailable > bun && totalPattyAvailable > patty) {
      print('Case #${i + 1}: YES');
      total++;
    } else {
      print('Case #${i + 1}: NO');
    }
  }
}

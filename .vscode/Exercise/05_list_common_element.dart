/*
Take two lists, for example:
  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and write a program that returns a list that contains only the elements
that are common between them (without duplicates). Make sure your program
works on two lists of different sizes.
*/

import 'dart:io';

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  Set<int> aSet = Set<int>.from(a);
  Set<int> bSet = Set<int>.from(b);

  /*
  Set<int> commonSet = aSet.intersection(bSet);
  print("Matching Output :\n ${commonElements}");
  */

  a = aSet.toList();
  b = bSet.toList();

  print("Matching Output : ");
  for (int i = 0; i < a.length; i++) {
    for (int j = i; j < b.length; j++) {
      if (a[i] == b[j]) {
        stdout.write('${a[i]} ');
      }
    }
  }
}

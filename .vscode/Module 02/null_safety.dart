void main() {
  // nullable int
  int? a;
  int b = 34;
  //null handle
  // a = 4;int c = (a! ?? 0) + b;
  int c = (a ?? 0) + b;
  //force unwrap
  //int h = a! * 10;
  print(a);
  print(c);
}

void main() {
  int a = 100;
  print(addSum(a, 100));
  print(division(a: 10));
}

//primary and optional parameter with address
double division({required int a, int b = 1}) {
  return a / b;
}

//primary and optional parameter without address
int addSum(int a, [int b = 0]) {
  return a + b;
}

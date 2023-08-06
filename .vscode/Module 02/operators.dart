void main() {
  int a = 12;
  int b = 45;

  int add = a + b;
  int sub = a - b;
  int multi = a * b;
  double div = a / b;

  print(add);
  print(sub);
  print(multi);
  print(div);

  print(add++); //57
  print(add); //58

  print(++add); //59
  print(add); //59
}

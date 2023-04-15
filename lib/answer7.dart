class A {
  void methodA() {
    print('A');
  }
}

class B {
  void methodB() {
    print('B');
  }
}

class C with A, B {
  void methodC() {
    print('C');
  }
}

void main() {
  var c = C();
  c.methodA();
  c.methodB();
  c.methodC();
}
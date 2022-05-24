
class A {
  final Function function;
  A(this.function){
    function(1); // gonna print test
  }
}

getString(value) {
  print(value.runtimeType);
}

void main() {
  A(getString);
}

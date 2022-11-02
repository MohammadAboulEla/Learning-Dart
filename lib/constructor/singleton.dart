class Singleton{
  Singleton._private();
  static final Singleton _instance = Singleton._private();
  factory Singleton() => _instance;
  int test = 1;
}

void main(){
  var s1 = Singleton();
  var s2 = Singleton();

  print(s1.test);
  s1.test = 10;
  print(s2.test);
}
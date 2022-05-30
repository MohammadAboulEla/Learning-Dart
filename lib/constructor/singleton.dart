class Singleton{
  Singleton._private();
  static final Singleton _instance = Singleton._private();
  factory Singleton() => _instance;

}
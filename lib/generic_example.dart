class Mode<T> {
  T? value; // this is a generic type
  void changeThemeMode(value) {
    if (value is bool) {
      print("value is bool");
    }
    if (value is String) {
      print("value is String");
    }
    if (value is int) {
      print("value is int");
    }
    // or do whatever you want here
    //print(value);
  }
}

void main() {
  var myClass = Mode();
  myClass.changeThemeMode(false);
  myClass.changeThemeMode("test");
  myClass.changeThemeMode(7);
}

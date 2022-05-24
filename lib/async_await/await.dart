void main () {
  print("start");
  delay();
}

delay () async{
 await Future.delayed(Duration(seconds: 2));
 return Future.value(1);
}
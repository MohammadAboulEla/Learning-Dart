void main () async{
  print("start");
  await delay();
  print("end");
}

delay () async{
 await Future.delayed(Duration(seconds: 2));
 return Future.value(1);
}

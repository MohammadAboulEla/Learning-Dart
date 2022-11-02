import 'dart:math' show Random;

extension on Iterable {
  getRandomItem(){
    return toList()[Random().nextInt(length)];}

  // Now you can do this
  // List myList = ["a","b","c","d","e",];
  // print(myList.getRandomItem());
}
extension on int{
  delay()async{
    await Future.delayed(Duration(seconds: this));}

  // Now you can do this
  // print("start");
  // await 2.delay();
  // print("end");
}

extension on String{
  toInt(){
    try {return int.parse(this);}
    catch(_){throw ("String '$this' is not integer");}}

  // Now you can do this
  // x = "1".toInt();
  // print(x+2)
}

main()async{

  // print("1".toInt());
  //
  // List myList = ["a","b","c","d","e",];
  // print(myList.getRandomItem());
  //
  // print("start");
  // await 2.delay();
  // print("end");
  //
  // String x = "1";
  // String y = "2";
  // print(x.toInt()+y.toInt());
  // await Future.delayed(Duration(seconds: 2));
  // print("hi");
  // await 2.delay();
  // print("dina");

}
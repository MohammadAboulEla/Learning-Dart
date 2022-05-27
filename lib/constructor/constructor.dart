
class Robot {
  final double height;
  int count = 0;

  Robot(this.height) : assert(height > 4.2);
}
class Car {
  static int count = 0;
  Car(){
    count +=1;
  }
}



main () async{
  dynamic r = Car();
  print(Car.count.toString());
  r = 0;
  print(Car.count.toString());
  dynamic r2 = Car();
  r2 = 0;
  print(Car.count.toString());
  // r = 0;
  await Future.delayed(Duration(seconds: 5));
  print(Car.count.toString());

}
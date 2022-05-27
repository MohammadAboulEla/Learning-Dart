
class Car {
  String make;
  String model;
  String yearMade;
  bool hasABS;
  Car(this.make, this.model, this.yearMade, this.hasABS);
  Car.withoutABS(this.make, this.model, this.yearMade): hasABS = false;
}
void main (){
  var myCar = Car.withoutABS("N", "bm", "252");
  print(myCar.hasABS);
}
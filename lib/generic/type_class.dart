class Car<T>{
  T? x;
  Car(this.x){
    if (x is String){
      print("string");
    }
    else if (x is int){
      print("int");
    }
    else if (x is bool){
      print("bool");
    }
  }

}

class Person<foo,ola>{

  foo x;
  ola y;
  Person(this.x,this.y);

}

main(){
  var p1 = Person("a",2);
  print(p1.x.runtimeType);

}
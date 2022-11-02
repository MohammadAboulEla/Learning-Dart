import 'dart:math' show Random;


class Randomizer{
  final Random _random = Random();

  ///Gives you random integer in range
  number(int max){
    return _random.nextInt(max);
  }

  ///Gives you random double
  double(int max){
    return _random.nextInt(max).toDouble();
  }

  ///Gives you random color
  color(){
    // needs flutter
    // Color color  = Color.fromRGBO(
    //   _random.nextInt(256),
    //   _random.nextInt(256),
    //   _random.nextInt(256),
    //   1
    // )
    // return color;
  }

  ///Gives you random item in iterable
  item(Iterable iterable){
    return iterable.toList()[_random.nextInt(iterable.length)];
  }

  ///Gives you random item in iterable
  ///if this item is also iterable
  ///it will give you a random item from it
  itemSub(Iterable iterable){
    var pick = iterable.toList()[_random.nextInt(iterable.length)];
    if (pick is Iterable){
      return pick.toList()[_random.nextInt(pick.length)];
    }
    else {
      return pick;
    }
  }

  ///Example:
  /// ```
  /// Map<dynamic,dynamic> map = {
  ///   1:["a","b","c"],
  ///   2:["d","e","f"],
  ///   3:["g","h","i"],};
  /// getRandom.value(map, 1);
  /// you get "a" or "b" or "c"
  /// ```
  ///Gives you random value for a given item key
  ///when this item value is iterable. else it will
  ///return the value for this key
  value(Map<dynamic,dynamic> map,key){
        return map[key][_random.nextInt(map[key].length)];
  }
}



main(){
  var getRandom = Randomizer();
  // List myList = [false,1,"a",5.5];
  // List nestList = [["a","b","c"],["d","e","f"],["g","h","i"]];
  // Map<dynamic,dynamic> mapOfLists = {
  //   1:["a","b","c"],
  //   2:["d","e","f"],
  //   3:"s",};
  // print(myList);
  // print(getRandom.item(myList));
  // print(getRandom.subItem(nestList));
  // print(getRandom.value(mapOfLists, 3));
  List box = ["dina","karim","mohammad","ahmed"];



  getRandom.number(2);
  print(box[getRandom.number(box.length)]);
  getRandom.item(box);

}
void main(){
  var myList = List<int>.generate(5, (int index) => index);
  print(myList);
  var myMapTake = myList.take(3).toList();
  print(myMapTake);
  var myMapJoin = myList.join("#");
  print(myMapJoin);
  var myMapAsMap = myList.asMap();
  print(myMapAsMap);
  var myMapEvery= myList.every((element) => element is String);
  print(myMapEvery);
  var myMapExpand= myList.expand((element) => [element,"ok"]).toList();
  print(myMapExpand);

}
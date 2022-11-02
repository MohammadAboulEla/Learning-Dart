main (){
  var list = ["Car","Ball","Door","Sky"];
  String text = "i like to play foot ball";

  if (list.any((item) => text.toLowerCase().contains(item.toLowerCase()))) {
    //Text has a value from list
    print("ok");
  }
}
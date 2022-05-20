void main(){
  var cards = ["ant","bee","rat"];
  cards.where((name) => name.contains('a')).forEach(print);
  for (var name in cards) {
      print(name);
    }
}
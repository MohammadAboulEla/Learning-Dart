


main (){
  String answer = "لعب";
  List<String> temp = answer.split(" ");

  print(temp.length);

  final words = RegExp(r'[a-zA-Zء-ي]');
  final wordPattern = RegExp(r'(\w)');
  final digitPattern = RegExp(r'(\d+)');

  String test = "لعب";

  var match = words.hasMatch(test);

  print(match);

}
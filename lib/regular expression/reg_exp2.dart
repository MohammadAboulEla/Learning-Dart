main() {
  String inLine = "hello world of dart";
  print(inLine);
  RegExp anyWord = RegExp(r'(\w+)');
  Iterable<Match> words = anyWord.allMatches(inLine);
  print("number of words is ${words.length}");
  print(words.map((word) => word.group(1)!).toList());
}
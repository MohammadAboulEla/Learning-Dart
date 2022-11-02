main(){
  String line = "[hello:u]";
  print(line);
  RegExp reg = RegExp(r'^(\[)(.*)(:)(.)(\])$');
  var match = reg.firstMatch(line);
  String newLine = "${match?.group(1)}${match?.group(2)}${match?.group(5)}";
  print(newLine);
}
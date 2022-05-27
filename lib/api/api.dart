import 'package:http/http.dart' as http;
import 'dart:convert';



void main ()async{

int ayaNumber = 11;
// String ayaPath ="http://api.alquran.cloud/v1/ayah/$ayaNumber/ar";
String audioPath = "http://api.alquran.cloud/v1/ayah/$ayaNumber/ar.alafasy";

var c = CheckResponse(path:audioPath);
var valid = await c.checkConnection();

print(valid);
}


class CheckResponse {


final String path;
CheckResponse({required this.path});

Future<http.Response> fetchData() {
  return http.get(Uri.parse(path));}

Future<bool> checkConnection () async {
 dynamic response;
 try{response = await fetchData();}
 catch(_){return Future<bool>.value(false);}
  var data = jsonDecode(response.body);
  print(data["code"]);
  if (data["code"]==200){
  return Future<bool>.value(true);
}
  return Future<bool>.value(false);
}
}



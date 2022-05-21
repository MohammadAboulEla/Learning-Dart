import 'package:http/http.dart' as http;
import 'dart:convert';


Future<http.Response> fetchData(String path) {
return http.get(Uri.parse(path));}

int ayaNumber = 15;
String ayaPath ="http://api.alquran.cloud/v1/ayah/$ayaNumber/ar";
String audioPath = "http://api.alquran.cloud/v1/ayah/$ayaNumber/ar.alafasy";

void main ()async{
  var response = await fetchData(ayaPath);
  var data = jsonDecode(response.body);
  print(data["data"]["text"]);
}



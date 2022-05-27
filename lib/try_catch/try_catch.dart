
main(){
  try{
    var app = "virus";
    if (app == "virus") throw Exception('Something bad happened.');
  }
  catch(error){
    print(error);
  }
}
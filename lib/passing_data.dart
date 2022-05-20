class HardDeskData {
  Map<String,dynamic>? data; //can be null
  init() {
    loadData();
    return this; // return data in this copy
  }
  loadData(){
    data = {"name":"Ahmed", "id" : 13, "age" : 23, "male":true };
    //... we write logic here for example ^^^
  }
}
class GetDataFromDesk {
  late Map<String,dynamic> myData; //can't be null
  var defaultData = {"name":"n/a", "id" : "n/a", "age" : "n/a", "male":"n/a"};
  init() {
    var loading = HardDeskData().init().data ?? defaultData;
    myData = loading;
    return this;
  }
}
void main(){
  var loadData = GetDataFromDesk().init();
  print(loadData.myData["name"]);
}

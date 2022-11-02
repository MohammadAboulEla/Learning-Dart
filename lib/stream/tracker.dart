class Tracker{
  List trackedList;
  int lastLen=0;
  late Stream trackStream;
  Tracker(this.trackedList){
    lastLen = trackedList.length;
  }
  start(){
    trackStream = Stream.periodic(Duration(seconds: 1),(int temp){return temp;});
    trackStream.listen((event) {
      print("...tracking");
      if (trackedList.length > lastLen){
        lastLen = trackedList.length;
        print("an item was added");
      }
      else if (trackedList.length < lastLen){
        lastLen = trackedList.length;
        print("an item was removed");
      }
      else if (trackedList.isEmpty){
        print("list is empty");
      }
    });
  }
}

void main()async{
  // List myList = [1,2,5,12];
  // Tracker t = Tracker(myList); t.start();
  // await Future.delayed(Duration(seconds: 2));
  // myList.add(11);
  // await Future.delayed(Duration(seconds: 2));
  // myList.removeLast();
  //
  // String text = "Foo";
  // print(text.toLowerCase());
  int x =10;
  x = 20;

  for (int i = 0; i<3; i = i +1){
  print(i);
  }

}
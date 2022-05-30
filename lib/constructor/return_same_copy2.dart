// بهذه الطريقة المبسطة يمكنك الحصول
// على نفس النسخة من الكلاس من أي مكان
// والتعديل على اي من خصائصه سيؤثر على الآخر
class Controller {
  static Controller controller = Controller._();
  Controller._();
  factory Controller(){
    return controller;}
  int counter = 5;
}
void main(){
  var c1 = Controller();
  var c2 = Controller();
  print(identical(c1, c2)); // true
  c1.counter = 6;
  print(c2.counter); // 6
}

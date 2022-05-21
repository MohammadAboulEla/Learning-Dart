// هذة الطريقة ستفيدك كثيرا فى تنظيم الكود
// وفهم طريقة عمل الاكواد التى تتعامل معها فى درات وفلاتر
// لنفترض أن لديك داله تمثل حدث سيقوم به المستخدم
// وبناء عليه ستقوم مجموعة من العناصر المختلفه باداء دورها

// نقوم بإنشاء كلاس من النوع ابستركت بحيث لا يمكن استخدامه بشكل مباشر
abstract class Action {
  // نقوم بتعريف الدالة فى كلاس مستقل بحيث لا تنفذ شيء
  whenUserSwipe(){}
}

// نجبر كل عنصر على الامتداد من هذا الكلاس باستخدام امبليمنت
// على عكس اكستند فاستخدام امبليمنت يجبرنا على اعادة تعيين كل الدوال بداخله
class A implements Action{
  @override
  whenUserSwipe(){
    print("I'm (A) so I will play sound");
  }
}
class B implements Action{
  @override
  whenUserSwipe(){
    print("I'm (B) so I will play animation");
  }
}
class C implements Action{
  @override
  whenUserSwipe(){
    print("I'm (C) so I show notification");
  }
}

// نعيد تعيين دوال الحدث في كل كلاس بهذا الشكل
class D implements Action{
  @override
  whenUserSwipe(){
    print("I'm (D) so I will update the score text");
  }
}


// نطلب من كل منهم ان يقوم بوظيفته
void main(){
  List group = [A(),B(),C(),D()];
  for (var whatWillYouDo in group) {whatWillYouDo.whenUserSwipe();}
}
// Result
// I'm (A) so I will play sound
// I'm (B) so I will play animation
// I'm (C) so I show notification
// I'm (D) so I will update the score text

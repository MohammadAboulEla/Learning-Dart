
abstract class Action {
  whenUserSwipe(){}
}

mixin Subscribers {
static List swipeSubscribers = [];
}

class A with Subscribers implements Action  {
  A(){
    Subscribers.swipeSubscribers.add(this);
  }
  @override
  whenUserSwipe(){
    print("I'm (A) so I will play sound");
  }
}
class B with Subscribers implements Action{
  B(){
    Subscribers.swipeSubscribers.add(this);
  }
  @override
  whenUserSwipe(){
    print("I'm (B) so I will play animation");
  }
}
class C with Subscribers implements Action{
  C(){
    Subscribers.swipeSubscribers.add(this);
  }
  @override
  whenUserSwipe(){
    print("I'm (C) so I show notification");
  }
}

// نعيد تعيين دوال الحدث في كل كلاس بهذا الشكل
class D with Subscribers implements Action{
  D(){
    Subscribers.swipeSubscribers.add(this);
  }
  @override
  whenUserSwipe(){
    print("I'm (D) so I will update the score text");
  }
}


// نطلب من كل منهم ان يقوم بوظيفته
void main(){

 var a = A();
 var b = B();
 var c = C();
 var d = D();

for(var i in Subscribers.swipeSubscribers) {i.whenUserSwipe();}

}
// Result
// I'm (A) so I will play sound
// I'm (B) so I will play animation
// I'm (C) so I show notification
// I'm (D) so I will update the score text

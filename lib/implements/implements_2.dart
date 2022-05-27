
abstract class Action {
  whenUserSwipe() {}
  static List swipeSubscribers = [];
}
class A implements Action  {
  A(){Action.swipeSubscribers.add(this);}
  @override
  whenUserSwipe(){
    print("I'm (A) so I will play sound");
  }
}
class B implements Action{
  B(){Action.swipeSubscribers.add(this);}
  @override
  whenUserSwipe(){
    print("I'm (B) so I will play animation");
  }
}
class C implements Action{
  C(){Action.swipeSubscribers.add(this);}
  @override
  whenUserSwipe(){
    print("I'm (C) so I show notification");
  }
}

// نعيد تعيين دوال الحدث في كل كلاس بهذا الشكل
class D implements Action{
  D(){Action.swipeSubscribers.add(this);}
  @override
  whenUserSwipe(){
    print("I'm (D) so I will update the score text");
  }
}


// نطلب من كل منهم ان يقوم بوظيفته
void main(){
var a = A();
var b = B();
for(var i in Action.swipeSubscribers) {i.whenUserSwipe();}

}
// Result
// I'm (A) so I will play sound
// I'm (B) so I will play animation
// I'm (C) so I show notification
// I'm (D) so I will update the score text

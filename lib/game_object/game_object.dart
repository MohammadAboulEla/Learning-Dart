
main (){
  var ball = BallObject("Ball");
  print(ball);
}

class BallObject extends GameObject{
  BallObject(String name):super(name);

  @override
  onUpdate(){
    super.onUpdate();
    if (lifeTimer == 5) destroy();
  }

}


abstract class GameObject{
  bool isAlive = false;
  int tickInterval = 1000;
  int lifeTimer = 0;
  String name = "";

  GameObject(String newName){name = newName; onInit();}

  onInit(){isAlive = true; onReady(); onUpdate();}

  onReady(){print("$name is Ready");}

  onUpdate(){
    Future.delayed(Duration(milliseconds: tickInterval))
        .then((_) => isAlive? onUpdate(): onDelete());
    lifeTimer ++;
    print("$name is running for $lifeTimer seconds");}

  onDelete(){print("$name is deleted");}

  destroy(){isAlive = false;}
}
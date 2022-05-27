import 'package:learning_dart/pes_2023/player.dart';

class Ball {
  late String color;

  Ball(this.color);

  whenShootingMe({required Player whoIsShooting}){
    print("do not shoot me ${whoIsShooting.name}");
  }

}
import 'package:learning_dart/pes_2023/player.dart';
import 'ball.dart';

void main(){
  Ball ball= Ball("blue");
  Ball ball2= Ball("red");
  Player neymar = Player("Neymar","Paris",7);
  Player salah = Player("Salah","LeverPool",11);

  ball.whenShootingMe(whoIsShooting: salah);
  salah.sayLikeToBall(whichBall: ball);

}
import 'package:learning_dart/pes_2023/ball.dart';
class Player {
  late String name;
  late String team;
  late int number;

  Player(this.name, this.team, this.number);

  shoot(){
    print("i'm $name shooting the ball");
  }
  pass(){
    print("i'm $name pass the ball");
  }
  whatIsYourName(){
    print("my name is $name my number is $number");
  }
  sayLikeToBall({required Ball whichBall}){
    print("I like your ${whichBall.color} color");
  }


}


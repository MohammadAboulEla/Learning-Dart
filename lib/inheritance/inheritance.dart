void main(List<String> arguments) {
  var man = Man();
  man.tellYourStory();
}

class Actions {
  thinking() async{
    await Future.delayed(Duration(seconds: 1));
    print("...");
    await Future.delayed(Duration(seconds: 1));
  }
}
class Creature extends Actions{
  tellYourStory(){
    print("I am a Creature");
  }
}
class HumanBeings extends Creature{
  @override
  tellYourStory() async {
    super.tellYourStory();
    await thinking();
    print("I am a Human Beings");
  }
}
class Man extends HumanBeings{
  @override
  tellYourStory() async {
    await super.tellYourStory();
    await thinking();
    print("I am a Man");
  }
}
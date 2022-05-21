// لنفترض أن هناك قاتل ارتكب جريمة
// فصنعنا هذا النموذج للمشتبهين
class ASuspect {
  String name;
  int age;
  ASuspect(this.name,this.age);
}
void main() {
  // ولدينا ثلاثة مشتبهين
  var aSuspect1 = ASuspect("Ahmed", 36);
  var aSuspect2 = ASuspect("Ramy", 18);
  var aSuspect3 = ASuspect("Karim", 24);

  // وضعناهم بالسجن لحين التحقيق
  var aJail = [aSuspect1, aSuspect2, aSuspect3];

  // ثم عثرنا على القاتل الحقيقي
  var theTrueKiller = ASuspect("Ahmed", 36);
  // فطلبيا احضار احمد من السجن
  var goGetHim = aJail.where((suspect) => suspect == ASuspect("Ahmed", 36));
  print(goGetHim);
  // => () النتيجة فارغة! ولم يعثر عليه
  // اردنا التحقق بانفسنا هل هو نفس الشخص
  print(aSuspect1 == theTrueKiller);
  // false !

  // لماذا حدث ذلك؟

  // لاننا صنعنا اربعة متغيرات منفصلة كل منهم له هاش كود ليميزه
  // لذلك فالحاسب لا يرى أن من منهم مساوى للآخر فهو يقارن حسب الهاش كود
  // فماذا لو اردنا ان نقارن حسب البيانات
  // هنا نفهم وظيفة = = التى استخدمناها
  // فهي عبارة عن داله للمقارنه نحتاج لتعديلها داخل الكلاس


  var suspect1 = Suspect("Ahmed", 36);
  var suspect2 = Suspect("Ramy", 18);
  var suspect3 = Suspect("Karim", 24);
  var jail = [suspect1, suspect2, suspect3];
  var trueKiller = Suspect("Ahmed", 36);
  var getHim = jail.where((suspect) => suspect == Suspect("Ahmed", 36));
  print(getHim);

  print(getHim); // => (Instance of 'Suspect') النتيجة الآن
  print(suspect1 == trueKiller); // true النتيجة الآن

}

// الكلاس بعد التعديل
class Suspect {
  String name;
  int age;
  Suspect(this.name,this.age);

  @override
  bool operator == (Object other) {
    if ((other is Suspect)
        && name == other.name && age == other.age){
      return true;} else {return false;}
  }

  @override
  int get hashCode => name.hashCode;

}


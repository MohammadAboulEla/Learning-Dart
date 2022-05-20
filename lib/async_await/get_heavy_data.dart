// نعيد كتابة الكود بالطريقة الصحيحة
void main() async {  // نضيف اسينك لتحويل الدالة لدالة تزامنيه

  var myData = await GetHeavyData.create();  // لتقبل الانتظار عند هذا السطر
  print(myData.data);                        // نطبع البيانات بعد الانتظار
}

class GetHeavyData {
  late List data;

  GetHeavyData._(); // نحول الكونستراكتور لبرايفت لقطع الاتصال به من خارج الكلاس

  static Future create() async {  // دالة متزامنه داخل الكلاس
    var copy = GetHeavyData._();  // تنصع نسخة من الكونستراكتور الخاص
    await copy.loadData();        // تنتظر جمع البيانات
    return copy;                  // تعيد نسخة من الكلاس محملة بالبيانات
  }

  loadData () async {             // داله اختبارية للحصول على نتيجة متأخرة
    print("start getting data");
    await Future.delayed(Duration(seconds:3)); // نعطلها لمحاكاة التأخير
    var response = [1,2,3,4,5,6];
    data = response;
    print("data loaded");
  }
}

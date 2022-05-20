void main() {
  var myData = GetHeavyData();
  print(myData.data);
}

// هذا الكود لا يظهر أخطاء عند الكتابة ولكنه سيعطي هذا الخطاء عند التشغيل
// Uncaught Error:
// LateInitializationError: Field 'data' has not been initialized.

class GetHeavyData {        // لماذا؟

  late List data;           // لأن متغير البيانات يحتاج لوقت لإعداده

  //constructor
  GetHeavyData(){          // بينما انت طلبت نسخة مباشرة من الكلاس
    loadData();           // !وتحميل البيانات لم يتم بعد
  }

  // داله اختبارية للحصول على نتيجة متأخرة
  loadData () async {
    print("start getting data");
    await Future.delayed(Duration(seconds:3)); // نعطلها لمحاكاة التأخير
    var response = [1,2,3,4,5,6];
    data = response;
    print("data loaded");
  }
}
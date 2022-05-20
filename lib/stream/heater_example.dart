import 'dart:async';
// لنفترض أن لدينا مؤشر لقياس درجات الحرارة
// وليكن له ثاثة درجات بارد ومعتدل وساخن
// دعنا نقوم ببرمجته بالطريقة الصحيحة
// عن طريق عمل اينم بهذا الشكل
enum TempSensor {
  cold,moderate,hot
}

main() {
  //الآن نحضر المدفئة
  Stream heater;
  // ونحضر المؤشر
  TempSensor sensor;
  // وحيث درجة الحرارة بداية ستكون باردة
  // سنقوم بضبط المؤشر على الفيمة الباردة
  sensor = TempSensor.cold;
  // لنفترض أن المدفئة ستقوم برفع درجة الحرارة بمقدار 1 درجة لكل ثانية
  // نستخدم استريم بريوديك لتشغيل المدفئة وضبطها لتعيد درجة الحرارة بعد كل ثانية
  heater = Stream.periodic(Duration(seconds: 1),(int temp){return temp;});
  // الآن نجلس بجانب المدفئة لمراقبة درجة الحرارة
  // ونحضر انفسنا كمشاركين فى هذا الاستريم
  StreamSubscription? me;
  // ونستمع له بهذة الطريقة
  me = heater.listen((temp) {
    print("temperature now is $temp");
    if (temp > 5){ sensor = TempSensor.moderate;}
    // بعد 5 ثواني سيتغير المؤشر الى معتدل
    if (temp > 10){ sensor = TempSensor.hot;}
    // بعد 5 ثواني آخرى سيتغير المؤشر الى ساخن
    if (sensor == TempSensor.hot){ print("Shut down now now!"); }
    // عندما تصل درجة الحرارة لدرجة ساخنة ستظهر رسالة تحذيرية للإطفاء
    if (sensor == TempSensor.hot){
      // فائدة اننا استمعنا من خلال المتغير
      me?.cancel(); // ان ننهي الحدث برمجيا
    }
  });

}


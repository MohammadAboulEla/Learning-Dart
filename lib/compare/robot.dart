class Robot {
  final double height;
  Robot(this.height);
}

main() {
  final r1 = Robot(7);
  final r2 = Robot(7);
  final r3 = Robot(9);

  print(r1.height); // 7
  print(r2.height); // 7
  print(identical(r1, r2)); // true
  print(r3.height); // 9
  print(identical(r2, r3)); // false
}
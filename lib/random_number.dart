import 'dart:math';
var x = 0;

class RandomNumber {
  void _random() {
    random(min, max){
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }
    return x = random(1000,9999); // Output : 19, 6, 15..
  }
}
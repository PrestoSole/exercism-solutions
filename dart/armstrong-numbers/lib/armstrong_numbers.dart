import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    int result =
        number.toString().split('').map(int.parse).fold(0, (total, element) {
      return total + pow(element, number.toString().length).toInt();
    });
    return result == number ? true : false;
  }
}

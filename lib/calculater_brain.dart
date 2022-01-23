import 'dart:math';

class CalculaterBrain {
  final int height;
  final int weight;
  double _bmi = 0;

  CalculaterBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'LowerWeight';
    }
  }

  String getDescriptionText() {
    if (_bmi >= 25) {
      return 'you have a higher than normal body, try to exercise more';
    } else if (_bmi > 18.5) {
      return 'you have a perfect body,keep going with it';
    } else {
      return 'you have to lower than normal height';
    }
  }
}

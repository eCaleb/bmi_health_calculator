class CalculatorBrain {
  
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI(){
    double bmi = weight / (height * height / 10000);
    return bmi.toStringAsFixed(2);
  }

  String getResult(){
    double bmi = double.parse(calculateBMI());
    if (bmi < 18.5) {
      return 'Underweight';
      } else if (bmi < 25) {
        return 'Normal';
        } else if (bmi < 30) {
          return 'Overweight';
          } else {
            return 'Obese';
            }
  }

  String getInterpretation(){
    double bmi = double.parse(calculateBMI());
    if (bmi < 18.5) {
      return 'You have a lower body mass index, consider gaining weight.';
      } else if (bmi < 25) {
        return 'You have a normal body mass index, good job!';
        } else if (bmi < 30) {
          return 'You have a higher body mass index, consider losing weight.';
          } else {
            return 'You have an obese body mass index, please consult a doctor.';
            }
  }
}

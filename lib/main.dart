import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMI_Calculater());
}

class BMI_Calculater extends StatelessWidget {
  const BMI_Calculater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF10163A),
        appBarTheme: AppBarTheme(color: Color(0xFF10163A)),
      ),
      home: Input(),
    );
  }
}

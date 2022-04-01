import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
          appBarTheme: const AppBarTheme(color: Color(0xFF0A0E21))),
      initialRoute: 'Home',
      routes: {
        'Home': (context) => const InputPage(),
        'ResultPage': (context) => ResultPage(),
      },
    );
  }
}


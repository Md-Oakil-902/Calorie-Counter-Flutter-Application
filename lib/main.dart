import 'package:calorie_counter/pages/personal_information/gender_selection.dart';
import 'package:calorie_counter/pages/splash_screen.dart';
import 'package:calorie_counter/utils/responsive.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

       Responsive.init(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GenderSelection(),
        );
      },
    );
  }
}

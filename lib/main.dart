import 'package:flutter/material.dart';
import 'package:language_app/constants/const_color.dart';
import 'package:language_app/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ConstColor.HAPPY_DAYS,
        primarySwatch: MaterialColor(
          ConstColor.COOL_AIR_OF_DEBONAIR.value,
          const <int, Color>{
            50: ConstColor.COOL_AIR_OF_DEBONAIR,
            100: ConstColor.COOL_AIR_OF_DEBONAIR,
            200: ConstColor.COOL_AIR_OF_DEBONAIR,
            300: ConstColor.COOL_AIR_OF_DEBONAIR,
            400: ConstColor.COOL_AIR_OF_DEBONAIR,
            500: ConstColor.COOL_AIR_OF_DEBONAIR,
            600: ConstColor.COOL_AIR_OF_DEBONAIR,
            700: ConstColor.COOL_AIR_OF_DEBONAIR,
            800: ConstColor.COOL_AIR_OF_DEBONAIR,
            900: ConstColor.COOL_AIR_OF_DEBONAIR,
          },
        ),
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

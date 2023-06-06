import 'package:flutter/material.dart';
import 'package:language_app/constants/const_color.dart';
import 'package:language_app/widgets/FormPop.dart';
import 'package:language_app/widgets/LangCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Başlık",
          style: TextStyle(
            color: ConstColor.MYSTIC_LIGHT,
          ),
        ),
      ),
      body: LangCard(),
      floatingActionButton: FormPop(),
    );
  }
}

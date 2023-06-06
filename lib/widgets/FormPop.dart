import 'package:flutter/material.dart';
import 'package:language_app/constants/const_color.dart';

class FormPop extends StatefulWidget {
  const FormPop({Key? key}) : super(key: key);

  @override
  _FormPopState createState() => _FormPopState();
}

class _FormPopState extends State<FormPop> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: ConstColor.MYSTIC_LIGHT,
              title: const Center(
                child: Text("Card Add"),
              ),
              content: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(labelText: "Card Name"),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    String enteredText = _textEditingController.text;
                    // Değişkeni kullanmak için istediğiniz işlemleri yapabilirsiniz.
                    print(enteredText);
                    Navigator.pop(context); // Dialog kapatma
                  },
                  child: const Text("Add"),
                )
              ],
            );
          },
        ),
      },
      child: const Icon(
        Icons.add,
        color: ConstColor.MYSTIC_LIGHT,
      ),
    );
  }
}

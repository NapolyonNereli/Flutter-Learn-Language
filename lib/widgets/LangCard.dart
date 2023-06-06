import 'package:flutter/material.dart';
import 'package:language_app/constants/const_color.dart';

class LangCard extends StatelessWidget {
  const LangCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Bunu belki kullanmayız.
    //double screenHeight = MediaQuery.of(context).size.height;

    responsiveCard(mediaValue) {
      if (mediaValue > 728) {
        return 4;
      } else if (mediaValue <= 728 && mediaValue >= 500) {
        return 3;
      } else if (mediaValue < 500 && mediaValue >= 300) {
        return 2;
      } else {
        return 1;
      }
    }

    return GridView.count(
      crossAxisCount: responsiveCard(screenWidth),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            color: ConstColor.MYSTIC_LIGHT,
            child: InkWell(
              splashColor: ConstColor.FADED_FLAXFLOWER,
              onTap: () => {
                debugPrint("card tapped"),
              },
              child: const SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text("deneme"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

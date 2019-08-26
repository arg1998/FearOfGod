import 'package:fear_of_god/widgets/LooksListItem.dart';
import 'package:flutter/material.dart';

class LooksList extends StatelessWidget {
  final showTitle;
  final Color textColor;
  const LooksList({this.showTitle = true, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showTitle)
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "LOOKS",
                style: TextStyle(
                  color: textColor != null ? textColor : Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const LooksListItem(
                  key: Key("I"),
                  imagePath: "assets/images/SIXTH03.jpg",
                  number: "I",
                ),
                const LooksListItem(
                  key: Key("II"),
                  imagePath: "assets/images/SIXTH02.jpg",
                  number: "II",
                ),
                const LooksListItem(
                  key: Key("III"),
                  imagePath: "assets/images/SIXTH06.jpg",
                  number: "III",
                ),
                const LooksListItem(
                  key: Key("IV"),
                  imagePath: "assets/images/SIXTH04.jpg",
                  number: "IV",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

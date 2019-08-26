import 'package:fear_of_god/utils/FogIcons.dart';
import 'package:flutter/material.dart';

class FearOfGodHeader extends StatelessWidget {
  const FearOfGodHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Text(
            "FEAR OF GOD",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w900),
          ),
          IconButton(
            icon: Icon(
              FogIcons.heart,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {
              //TODO: implement back button
            },
          ),
        ],
      ),
    );
  }
}

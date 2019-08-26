import 'package:fear_of_god/utils/FogIcons.dart';
import 'package:flutter/material.dart';

class SixthCollectionHeader extends StatelessWidget {
  const SixthCollectionHeader({
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
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Text(
            "SIXTH COLLECTION",
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          IconButton(
            icon: Icon(
              FogIcons.upload,
              color: Colors.white,
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

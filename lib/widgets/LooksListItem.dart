import 'package:flutter/material.dart';

class LooksListItem extends StatelessWidget {
  final String imagePath;
  final String number;
  final Key key;
  const LooksListItem({this.key, this.imagePath, this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        key: key,
        width: 140,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
              Text(
                number,
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ));
  }
}

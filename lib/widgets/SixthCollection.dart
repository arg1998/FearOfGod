import 'package:fear_of_god/pages/SixthEditionTab.dart';
import 'package:flutter/material.dart';

class SixthCollection extends StatelessWidget {
  const SixthCollection();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Hero(
              tag: "SIXTH",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(SixthEditionTab.routeName);
                  },
                  child: Image.asset(
                    "assets/images/SIXTH01.jpg",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "SIXTH COLLECTION",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}

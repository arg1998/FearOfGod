import 'package:fear_of_god/utils/FogIcons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Function changeTab;

  BottomBar({this.changeTab});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    height = (height * 0.1) < 60 ? 60 : height * 0.1;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 20,
            spreadRadius: 0.5,
            offset: Offset(0, -2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                changeTab(0);
              },
              child: Text(
                "FG",
                style: TextStyle(
                  fontSize: height * 0.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  changeTab(1);
                },
                child: Icon(FogIcons.heart)),
            GestureDetector(
                onTap: () {
                  changeTab(2);
                },
                child: Icon(FogIcons.bag)),
            GestureDetector(
                onTap: () {
                  changeTab(3);
                },
                child: Icon(FogIcons.user)),
          ],
        ),
      ),
    );
  }
}

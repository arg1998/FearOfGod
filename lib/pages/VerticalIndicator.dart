import 'package:flutter/material.dart';

class VerticalIndicator extends StatelessWidget {
  final int count;
  final int selected;
  final Key key;
  VerticalIndicator({this.key, this.count, this.selected}) : super(key: key);

  List<Widget> _buildDots() {
    return List.generate(count, (index) {
      bool isSelected = index == selected;

      return AnimatedContainer(
        duration: Duration(milliseconds: 400),
        width: 6,
        height: isSelected ? 16 : 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? Colors.black : Colors.black26,
        ),
        child: Container(),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      padding: EdgeInsets.only(right: 15),
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildDots(),
      ),
    );
  }
}

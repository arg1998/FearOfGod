import 'package:flutter/material.dart';

class SelectedSize extends StatelessWidget {
  final selected;
  final Function onSelectSize;
  final Key key;
  SelectedSize({this.key, this.selected, this.onSelectSize}) : super(key: key);

  Widget _buildSizeItem(int index, String text) {
    bool isSelected = index == selected;
    final i = index;
    return GestureDetector(
      onTap: () {
        onSelectSize(i);
      },
      child: AnimatedContainer(
        width: 50,
        height: 50,
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: isSelected ? 3 : 1,
            color: isSelected ? Colors.black : Colors.black26,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  final _sizes = const <String>["XS", "S", "M", "L", "XL"];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        _sizes.length,
        (index) => _buildSizeItem(
          index,
          _sizes[index],
        ),
      ).toList(),
    );
  }
}

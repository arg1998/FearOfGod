import 'package:flutter/material.dart';
import '../utils/FogIcons.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Color(0xFFDBDBDB),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: TextField(
          maxLines: 1,
          autofocus: false,
          expands: false,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              filled: true,
              fillColor: Colors.white,
              hintText: "Search...",
              prefixIcon: Icon(
                FogIcons.search,
                color: Colors.black,
                size: 20,
              ),
              border: OutlineInputBorder(
                  gapPadding: 5,
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}

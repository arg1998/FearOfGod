import 'package:flutter/material.dart';

class FogHeadline extends StatelessWidget {
  const FogHeadline({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        "FEAR OF GOD",
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }
}

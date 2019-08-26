import 'package:fear_of_god/pages/ProductDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './pages/HomePage.dart';

main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(FearOfGod());
}

class FearOfGod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        ProductDetailsPage.routeName: (ctx) => ProductDetailsPage()
      },
      theme: ThemeData(
          fontFamily: 'arial',
          textTheme: TextTheme(
            headline: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 32,
            ),
          )),
    );
  }
}

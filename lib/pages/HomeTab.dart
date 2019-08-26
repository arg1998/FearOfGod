import 'package:flutter/material.dart';
import 'package:fear_of_god/models/ShopItemType.model.dart';
import 'package:fear_of_god/widgets/LooksList.dart';
import 'package:fear_of_god/widgets/ShopList.dart';
import 'package:fear_of_god/widgets/SixthCollection.dart';
import '../widgets/FogHeadline.dart';
import '../widgets/SearchBar.dart';

class HomeTab extends StatelessWidget {

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: FogHeadline(),
            ),
            SizedBox(height: 10),
            SearchBar(),
            SizedBox(height: 10),
            SixthCollection(),
            SizedBox(height: 20),
            ShopList(type: ShopItemType.OUTERWEAR),
            SizedBox(height: 50),
            LooksList(),
            SizedBox(height: 50),
            ShopList(type: ShopItemType.TOP),
            SizedBox(height: 50),
            ShopList(type: ShopItemType.DENIM),
            SizedBox(height: 50),
            ShopList(type: ShopItemType.BOTTOM),
            SizedBox(height: 50),
            ShopList(type: ShopItemType.FOOTWEAR),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

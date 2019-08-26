import 'package:fear_of_god/pages/FavoritesTab.dart';
import 'package:fear_of_god/pages/ShopCartTab.dart';
import 'package:fear_of_god/pages/UserTab.dart';
import 'package:flutter/material.dart';
import 'package:fear_of_god/utils/CustomNavigator.dart';
import 'package:fear_of_god/widgets/BottomBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cuurrentTabIndex = 0;

  changeTab(int index) {
    setState(() {
      _cuurrentTabIndex = index;
    });
  }

  final _tabs = <int, Widget>{
    0: CustomNavigator(),
    1: FavoritesTab(),
    2: ShopCartTab(),
    3: UserTab()
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: _tabs[_cuurrentTabIndex],
      bottomNavigationBar: BottomBar(
        changeTab: changeTab,
      ),
    );
  }
}

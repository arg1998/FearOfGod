import 'package:fear_of_god/pages/HomeTab.dart';
import 'package:fear_of_god/pages/SixthEditionTab.dart';
import 'package:flutter/material.dart';

class CustomNavigator extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Navigator(
      onGenerateRoute: getRoutes,
      observers: [HeroController()],
    );
  }

  static var routes = <String, WidgetBuilder>{
    HomeTab.routeName: (BuildContext context) => HomeTab(),
    SixthEditionTab.routeName: (BuildContext context) => SixthEditionTab(),
  };

  static Route<BuildContext> getRoutes(RouteSettings settings) {
    var builder = routes[settings.name];
    if (builder != null) {
      return new MaterialPageRoute(
        settings: settings,
        builder: builder,
      );
    }
    return null;
  }
}

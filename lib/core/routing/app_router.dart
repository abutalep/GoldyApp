import 'package:flutter/material.dart';
import 'package:goldy_app/core/routing/routes.dart';
import 'package:goldy_app/features/gold/presentation/view/gold_view.dart';
import 'package:goldy_app/features/home/presentation/view/home_view.dart';
import 'package:goldy_app/features/silver/presentation/view/silver_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeView:
        return MaterialPageRoute(builder: (context) => HomeView());
      case AppRoutes.goldView:
        return MaterialPageRoute(builder: (context) => GoldView());
      case AppRoutes.silverView:
        return MaterialPageRoute(builder: (context) => SilverView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

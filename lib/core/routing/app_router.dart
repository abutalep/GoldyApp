import 'package:flutter/material.dart';
import 'package:goldy_app/core/routing/routes.dart';
import 'package:goldy_app/features/home/presentation/home_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeView:
        return MaterialPageRoute(builder: (context) => HomeView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

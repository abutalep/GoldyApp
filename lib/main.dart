import 'package:flutter/material.dart';
import 'package:goldy_app/core/routing/app_router.dart';
import 'package:goldy_app/core/routing/routes.dart';

void main() {
  runApp(const GoldyApp());
}

class GoldyApp extends StatelessWidget {
  const GoldyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goldy App',
      theme: ThemeData().copyWith(scaffoldBackgroundColor: Colors.black),
      initialRoute: AppRoutes.homeView,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}

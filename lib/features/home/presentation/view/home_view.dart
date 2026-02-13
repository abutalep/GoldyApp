import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_strings.dart';
import 'package:goldy_app/core/routing/routes.dart';
import 'package:goldy_app/features/home/presentation/view/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          CustomButton(
            text: AppStrings.gold,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.goldView);
            },
            color: AppColors.primaryColor,
          ),
          CustomButton(
            text: AppStrings.silver,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.silverView);
            },
            color: AppColors.secondaryColor,
          ),
        ],
      ),
    );
  }
}

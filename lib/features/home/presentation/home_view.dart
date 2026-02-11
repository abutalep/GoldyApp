import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_strings.dart';
import 'package:goldy_app/core/widgets/custom_button.dart';

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
            onPressed: () {},
            color: AppColors.primaryColor,
          ),
          CustomButton(
            text: AppStrings.silver,
            onPressed: () {},
            color: AppColors.secondaryColor,
          ),
        ],
      ),
    );
  }
}

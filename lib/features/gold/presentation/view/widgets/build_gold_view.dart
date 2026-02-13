import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_images.dart';
import 'package:goldy_app/core/constants/app_strings.dart';
import 'package:goldy_app/core/widgets/custom_text.dart';
import 'package:goldy_app/features/gold/data/models/gold_model.dart';

class BuildGoldView extends StatelessWidget {
  const BuildGoldView({super.key, required this.goldModel});
  final GoldModel goldModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.gold, width: 200, height: 250),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            CustomText(
              text: '${goldModel.price}',
              color: AppColors.primaryColor,
            ),
            CustomText(text: AppStrings.usd, color: AppColors.primaryColor),
          ],
        ),
      ],
    );
  }
}

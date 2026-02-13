import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_images.dart';
import 'package:goldy_app/core/constants/app_strings.dart';
import 'package:goldy_app/core/widgets/custom_text.dart';
import 'package:goldy_app/features/silver/data/models/silver_model.dart';

class BuildSilverView extends StatelessWidget {
  const BuildSilverView({super.key, required this.silverModel});
  final SilverModel silverModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.silver, width: 200, height: 250),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            CustomText(
              text: '${silverModel.price}',
              color: AppColors.secondaryColor,
            ),
            CustomText(text: AppStrings.usd, color: AppColors.secondaryColor),
          ],
        ),
      ],
    );
  }
}

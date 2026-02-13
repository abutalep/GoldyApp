import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_strings.dart';
import 'package:goldy_app/features/gold/data/repo/gold_repo.dart';
import 'package:goldy_app/features/gold/presentation/view/widgets/build_gold_view.dart';
import 'package:goldy_app/features/gold/presentation/view_model/gold_cubit.dart';
import 'package:goldy_app/features/gold/presentation/view_model/gold_states.dart';

class SilverView extends StatelessWidget {
  const SilverView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            AppStrings.gold,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        body: BlocBuilder<GoldCubit, GoldStates>(
          builder: (context, state) {
            if (state is GoldLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GoldSuccessState) {
              return BuildGoldView(goldModel: state.goldModel);
            } else if (state is GoldErrorState) {
              return Center(child: Text(state.errMsg));
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}

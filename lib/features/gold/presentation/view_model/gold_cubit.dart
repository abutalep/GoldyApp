import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy_app/features/gold/data/repo/gold_repo.dart';
import 'package:goldy_app/features/gold/presentation/view_model/gold_states.dart';

class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitialState());

  Future<void> getGold() async {
    emit(GoldLoadingState());
    final res = await goldRepo.getGold();
    res.fold(
      (error) {
        emit(GoldErrorState(errMsg: error));
      },
      (goldModel) {
        emit(GoldSuccessState(goldModel: goldModel));
      },
    );
  }
}

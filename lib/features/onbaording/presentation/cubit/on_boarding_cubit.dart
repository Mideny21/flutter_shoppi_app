import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class OnboardingCubit extends Cubit<int> {
  static const int _totalPages = 3;

  OnboardingCubit() : super(0);

  void nextPage() {
    if (state < _totalPages - 1) {
      emit(state + 1);
    }
  }

  void skipToLast() {
    emit(_totalPages - 1);
  }

  bool get isLastPage => state == _totalPages - 1;

  int get totalPages => _totalPages;
}

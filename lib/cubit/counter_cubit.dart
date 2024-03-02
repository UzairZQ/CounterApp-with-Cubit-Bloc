import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state <= 0) {
      emit(0);
      //if(state ==0)
      //return; this works too just return the function with nothing
    } else {
      emit(state - 1);
    }
  }
}

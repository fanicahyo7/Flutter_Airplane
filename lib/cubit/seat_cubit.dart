import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void setSeat(String id) {
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    print(state);
    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    print(index);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}

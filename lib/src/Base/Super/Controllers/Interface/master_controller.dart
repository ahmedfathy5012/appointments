import 'package:mobile/src/Base/Core/NetworkStructure/Resources/DataState/data_state.dart';

mixin MasterController<T> {

  void emit(DataState<T> value);

  DataState<T> state = DataInitial<T>();

  T get data => state.data!;

  bool get stateReady => state is! DataLoading;

  bool get stateUnReady => state is DataLoading;

  bool get stateSuccess => state is DataSuccess;

  bool get stateNotSuccess => state is! DataSuccess;

  bool get stateError => state is DataFailed;

  void emitLoading(){
    if( state == null || state.pagination == null){
      emit(DataLoading());
    }
  }
}

import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Resources/DataState/data_state.dart';
import 'package:mobile/src/Base/Super/Controllers/Interface/master_controller.dart';

  abstract class RiverControllerInterface<T> extends ChangeNotifier
       with MasterController<T> {

  @override
  void emit(DataState<T> value) {
      state = value;
      notifyListeners();
    }



  }
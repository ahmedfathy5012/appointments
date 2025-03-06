import 'package:mobile/src/Base/Core/Utils/Extensions/translate_extension.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/translate_extension.dart';

class ErrorModel {
  String title;
  final ErrorType type;

    ErrorModel({
    required this.title,
    required this.type,
  }){
      title  = title.toTr ();
    }
}

enum ErrorType {
  serverSide,
  networkConnection,
  dataEmpty,
  dirtyData,
  unKnown,
}


// error model
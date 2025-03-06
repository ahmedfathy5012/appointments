import 'package:mobile/src/Base/Core/Utils/Validation/Abstract/validator_imp.dart';
import 'package:mobile/src/Base/Core/Utils/Validation/validation_constants.dart';
import 'package:flutter/foundation.dart';

class DefaultValidator extends ValidatorImp {
  DefaultValidator._();

  static DefaultValidator get instance => DefaultValidator._();

  @override
  String? validate(String? value) {
     if(value!.isNotEmpty){
       return null;
     }else{
       return 'يجب ادخال المعلومات المطلوبة';
     }
  }
}

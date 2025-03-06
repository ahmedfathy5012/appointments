import 'package:mobile/src/Base/Core/Utils/Validation/Abstract/validator_imp.dart';
import 'package:mobile/src/Base/Core/Utils/Validation/validation_constants.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:flutter/foundation.dart';

class AgeValidator extends ValidatorImp {
  AgeValidator._();
  static AgeValidator get instance => AgeValidator._();

  int _stringToInt(String? value) {
    int age = 0;
    try {
      age = int.tryParse(value ?? "0") ?? 0;
    } catch (e) {
      if (kDebugMode) {
        printDM(e.toString());
      }
    }
    return age;
  }

  @override
  String? validate(String? value) {
    final age = _stringToInt(value);
    if (value!.isEmpty) {
      return ValidationConstants.validateAge;
      //من فضلك أدخل عمر صحيح
    } else if (age < 16) {
      return ValidationConstants.validateAgeLimitation;
    }
    // يجب أن لا يقل العمر عن 16 سنة
    else {
      return null;
    }
  }
}

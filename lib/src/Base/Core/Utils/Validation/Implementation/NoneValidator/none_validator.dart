import 'package:mobile/src/Base/Core/Utils/Validation/Abstract/validator_imp.dart';
import 'package:mobile/src/Base/Core/Utils/Validation/validation_constants.dart';
import 'package:flutter/foundation.dart';

class NoneValidator extends ValidatorImp {
  NoneValidator._();

  static NoneValidator get instance => NoneValidator._();

  @override
  String? validate(String? value) {
    return null;
  }
}

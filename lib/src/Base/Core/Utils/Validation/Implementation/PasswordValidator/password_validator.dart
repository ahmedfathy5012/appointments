


import 'package:mobile/src/Base/Core/Utils/Validation/Abstract/validator_imp.dart';
import 'package:mobile/src/Base/Core/Utils/Validation/validation_constants.dart';

class PasswordValidator extends ValidatorImp{
  PasswordValidator._();
  static PasswordValidator get instance  => PasswordValidator._();
  @override
  String? validate(String? value) {
    if (value!.isEmpty) {
      return ValidationConstants.validatePassword;
    } else {
      if (value.length < 6) {
        return ValidationConstants.validatePasswordLength;
      } else {
        return null;
      }
    }
  }
}



import 'package:mobile/src/Base/Core/Utils/Validation/Abstract/validator_imp.dart';
import 'package:mobile/src/Base/Core/Utils/Validation/validation_constants.dart';

class EmailValidator extends ValidatorImp {
  EmailValidator._();
   static EmailValidator  get instance => EmailValidator._();
  @override
  String? validate(String? value) {
    if (value!.isEmpty) {
      return ValidationConstants.validatePhone;
    }else if (!value.contains("@")){
      return ValidationConstants.invalidEmail;
    }
    return null;
  }


}



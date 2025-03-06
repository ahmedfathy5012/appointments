import 'package:mobile/src/Base/Core/Utils/Validation/Abstract/validator_imp.dart';
import 'package:mobile/src/Base/Core/Utils/Validation/validation_constants.dart';

class PhoneValidator extends ValidatorImp{
   PhoneValidator._();
   static PhoneValidator  get instance => PhoneValidator._();
  @override
  String? validate(String? value) {
    if (value!.isEmpty) {
      return ValidationConstants.validatePhone;
    }else if(value.length<10){
      return ValidationConstants.validatePhoneNotSuccess;

    }
    return null;
  }


}



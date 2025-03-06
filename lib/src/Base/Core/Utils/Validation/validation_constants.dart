import 'package:mobile/src/Base/Core/Utils/Extensions/translate_extension.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/translate_extension.dart';
import 'package:mobile/src/Base/Core/Utils/utils.dart';
import 'package:get/utils.dart';

class ValidationConstants {
  ValidationConstants._();
   static String _translateLabel (String value) => value.toTr();
    static String validatePhone = _translateLabel("validate_phone") ;
    static String validatePhoneNotSuccess = _translateLabel("validate_phone_not_success") ;
    static String invalidEmail = _translateLabel("validate_invalid_email")  ;
    static String validatePassword = _translateLabel("validate_password");
    static String validatePasswordLength = _translateLabel("validate_password_length");
    static String validateAge = _translateLabel("validate_age");
    static String validateAgeLimitation = _translateLabel("validate_age_limit");
}

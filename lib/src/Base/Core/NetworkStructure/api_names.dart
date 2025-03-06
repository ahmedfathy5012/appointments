

import 'package:mobile/app_info_keys.dart';

mixin ApiNames {
  static const String baseUrl = AppInfoKeys.baseUrl;
  // "https://portal.learnoapp.net/public/student/api/";

  static const String parentPreFix = "";

  // Auth
  final String uRLLogin = "${baseUrl}login";
  final String uRLRegister = "${baseUrl}register";
  final String uRLLogout = "${baseUrl}logout";
  final String uRLVerifyCredential = "${baseUrl}verify_credential";
  final String uRLCheckCredential = "${baseUrl}check_credential";
  final String uRLCheckCode = "${baseUrl}check_code";
  final String uRLResetPassword = "${baseUrl}reset_password";
  final String uRLChangePassword = "${baseUrl}change_password";
  final String uRLEditInfo = "${baseUrl}edit_info";


  final String uRLAccountSetting = "${baseUrl}edit_account";
  final String uRLFetchEducationStages = "${baseUrl}fetch_education_stages";
  final String uRLCompleteInfo = "${baseUrl}complete_info";


  final String uRLFetchHome = "${baseUrl}fetch_home";
  final String uRLFetchSubjects = "${baseUrl}fetch_subjects";
  final String uRLFetchTeachers = "${baseUrl}fetch_teachers";
  final String uRLFetchAllDocuments = "${baseUrl}fetch_all_documents";
  final String uRLFetchTeacherDocuments = "${baseUrl}fetch_teacher_documents";
  final String uRLFetchSubjectDocuments = "${baseUrl}fetch_subject_documents";
  final String uRLFetchMyDocuments = "${baseUrl}fetch_my_documents";

  final String uRLCreateSubscribeLink = "${baseUrl}create_subscribe_link";
  final String uRLSubscribeDocument = "${baseUrl}subscribe_document";

}

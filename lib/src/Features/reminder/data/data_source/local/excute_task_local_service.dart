//
// import 'package:dio/src/response.dart';
// import 'package:mobile/src/Base/Core/NetworkStructure/DataSource/service_interface.dart';
// import 'package:mobile/src/Base/Core/NetworkStructure/Params/params.dart';
//
// class LoginApiService {
//
//   LoginApiService._();
//
//   static LoginApiService? _instance = null ;
//
//   static LoginApiService get instance => _instance ??= LoginApiService._();
//
//   @override
//   Future<Response> applyService({Params? params}) {
//     return super.call(
//         uRLLogin,
//         type: CrudType.post,
//         params: params,
//         showLoadingDialog: true
//     );
//   }
// }
import 'dart:io';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Resources/DioService/Methods/imports_methods.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Utils/header_handler.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Interfaces/networking.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Resources/DioService/Handler/dio_response_handler.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Utils/network_constants.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:dio/dio.dart';

const String _testToken = '';

///change _apiToken later :

class DioService extends Networking<Response, DioError> {
  DioService._();

  static final _instance = DioService._();

  factory DioService() => _instance;

  Dio _dio = Dio();

  final DioGet _get = DioGet.instance;
  final DioPost _post = DioPost.instance;

  //<editor-fold desc="INIT DIO SERVICE">
  /// called once at [main.dart]
  @override
  void init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        // connectTimeout:  kConnectTimeout,
        // receiveTimeout:  kReceiveTimeout,
        // sendTimeout: kSendTimeout,
      ),
    );
    // _dio.interceptors.add(LogInterceptor(
    //   responseBody: true,
    //   requestBody: true,
    //   requestHeader: true,
    //   responseHeader: true,
    // ));
    _get.injectDio(_dio);
    _post.injectDio(_dio);
  }

  //</editor-fold>

  //<editor-fold desc="GET METHOD">
  @override
  Future<Response?> get({
    required String url,
    Map<String, String>? headers,
    bool auth = false,
  }) async {
    return _get.get(url: url, auth: auth, headers: headers);
  }

  //</editor-fold>

  //<editor-fold desc="POST METHOD">
  @override
  Future<Response?> post({
    required String url,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    bool auth = false,
    bool showLoadingDialog = false,
  }) async {
    return _post.post(
      url: url,
      headers: headers,
      body: body,
      auth: auth,
      showLoadingDialog: showLoadingDialog,
    );
  }

  //</editor-fold>

  //<editor-fold desc="Handle Response METHOD">
  @override
  Response? handleResponse({Response? response, DioError? error}) =>
      DioResponseHandler.instance
          .handleResponse(response: response, error: error);
//</editor-fold>

}

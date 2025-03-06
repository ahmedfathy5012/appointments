import 'package:mobile/src/Base/Core/NetworkStructure/Exceptions/failure.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Interfaces/Handler/error_handler.dart';
import 'package:dio/dio.dart';

import '../../../Utils/status_handler.dart';

class DioErrorHandler extends ErrorHandler<DioError> {
  DioErrorHandler._();

  static final DioErrorHandler instance = DioErrorHandler._();

  @override
  void handleError(DioError error) {
    if (error.response.toString().contains("SocketException")) {
      throw NetworkDisconnectException('Network Disconnect Exception');
    } else {
      _handleError(error);
    }
  }

  void _handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        throw TimeoutRequestException('Connection Timeout');
      case DioErrorType.sendTimeout:
        throw TimeoutRequestException('Send Timeout');
      case DioErrorType.receiveTimeout:
        throw TimeoutRequestException('Receive Timeout');
      case DioErrorType.badResponse:
        StatusHandler.instance
            .handleStatusCode(error.response?.statusCode ?? 0);
        break;
      case DioErrorType.cancel:
        throw TimeoutRequestException('Request Cancelled');
      case DioErrorType.unknown:
        throw UnKnownException('Unknown Error');
      default:
        throw UnKnownException('Unknown Error');
    }
  }
}

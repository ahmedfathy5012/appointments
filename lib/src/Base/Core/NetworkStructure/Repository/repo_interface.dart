import 'dart:io';
import 'package:mobile/src/Base/Core/NetworkStructure/Constants/exception_constants.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/DataSource/service_interface.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Exceptions/failure.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Params/params.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Resources/DataState/data_state.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Resources/Errors/error_model.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/handlers/unautharize_handler.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';

import 'package:get/get.dart';
import 'package:mobile/src/Base/Shared/Entities/pagination.dart';
import 'package:mobile/src/Base/Shared/Models/pagination_model.dart';
enum ResponseType {
  withData,
  withoutData,
}

abstract class RepoInterface<T> {
  /// return Your [Service] Class Instance In This Getter
  ServicesInterface get serviceInstance;

  ResponseType  get responseType => ResponseType.withData;


  T Function(dynamic data) get onParse;

  Future<DataState<T>>? call({Params? params}) async {
    try {
      final httpResponse = await serviceInstance.applyService(params: params);
      final checkResponse = ((httpResponse.statusCode == HttpStatus.ok) ||
          (httpResponse.statusCode == HttpStatus.created) ||
          (httpResponse.statusCode == HttpStatus.accepted)) &&
          (httpResponse.data['status'] ?? false);

      if (checkResponse) {
        if (responseType == ResponseType.withoutData) {
          return DataSuccess<T>(onParse(httpResponse.data), message: httpResponse.data['message']);
        }
        if (httpResponse.data['data'] != null) {
          T data = onParse(httpResponse.data['data']);
          try {
            Pagination? pagination;
              try{
                if(httpResponse.data['data']!=null){
                  if(httpResponse.data['data']['meta'] != null){
                    pagination = PaginationModel.fromJson(httpResponse.data['data']['meta']);
                  }
                }
              }catch(e){
                return DataSuccess<T>(data,message: httpResponse.data['message'],pagination: pagination);
              }
            return DataSuccess<T>(data,message: httpResponse.data['message'],pagination: pagination);
          } catch (e) {
            printDM('on Catch error from Repo =>  $e');
            return DataFailed(
              ErrorModel(
                title: 'حدث خطا ما اثناء التحويل',
                type: ErrorType.dirtyData,
              ),
            );
          }
        } else {
          return DataFailed(
            ErrorModel(
              title: httpResponse.data['message'] ?? '',
              type: ErrorType.dataEmpty,
            ),
          );
        }
      }
      return DataFailed(
        ErrorModel(
          title: httpResponse.data['message'] ?? '',
          type: ErrorType.serverSide,
        ),
      );
    } on BadRequestException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.badRequestException,
          type: ErrorType.serverSide,
        ),
      );
    } on ForbiddenException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.forbiddenException,
          type: ErrorType.serverSide,
        ),
      );
    } on NetworkDisconnectException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.networkDisconnectException,
          type: ErrorType.networkConnection,
        ),
      );
    } on UnAuthorizedException {
      // handle if user unauthorized
      UnAuthorizedHandler.instance.handle();

      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.unAuthorizedException,
          type: ErrorType.serverSide,
        ),
      );
    } on NotFoundException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.notFoundException,
          type: ErrorType.serverSide,
        ),
      );
    } on MethodNotAllowedException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.methodNotAllowedException,
          type: ErrorType.serverSide,
        ),
      );
    } on NotAcceptableException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.notAcceptableException,
          type: ErrorType.serverSide,
        ),
      );
    } on RequestTimeoutException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.requestTimeoutException,
          type: ErrorType.serverSide,
        ),
      );
    } on ConflictException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.conflictException,
          type: ErrorType.serverSide,
        ),
      );
    } on InternalServerException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.internalServerException,
          type: ErrorType.serverSide,
        ),
      );
    } on NotImplementedException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.notImplementedException,
          type: ErrorType.serverSide,
        ),
      );
    } on BadGatewayException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.badGatewayException,
          type: ErrorType.serverSide,
        ),
      );
    } on ServiceUnavailableException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.serviceUnavailableException,
          type: ErrorType.serverSide,
        ),
      );
    } on GatewayTimeoutException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.gatewayTimeoutException,
          type: ErrorType.serverSide,
        ),
      );
    } on UnKnownException {
      return DataFailed(
        ErrorModel(
          title: ExceptionConstants.instance.unKnownException,
          type: ErrorType.unKnown,
        ),
      );
    }
  }
}

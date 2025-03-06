import 'package:mobile/src/Base/Core/NetworkStructure/Params/params.dart';
import 'package:dio/dio.dart';

abstract class ServiceCaller{
  Future<Response> applyService({Params? params});
}
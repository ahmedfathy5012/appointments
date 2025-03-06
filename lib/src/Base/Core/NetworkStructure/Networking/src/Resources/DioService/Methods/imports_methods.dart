import 'dart:io';
import 'dart:ui';

import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Interfaces/Methods/get_method.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:dio/dio.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Interfaces/Methods/post_method.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Resources/DioService/Handler/dio_response_handler.dart';
 import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Utils/header_handler.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Utils/network_logger.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Utils/network_utils.dart';

part 'dio_get.dart';
part 'dio_post.dart';

import 'package:dio/src/response.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/DataSource/service_interface.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Params/params.dart';
import 'package:mobile/src/Features/reminder/core/constants/tabels.dart';
import 'package:mobile/src/Features/reminder/core/helpers/dataBaseHelper.dart';
import 'package:mobile/src/Features/reminder/core/response/local_response.dart';
import 'package:mobile/src/Features/reminder/data/models%20/data_base_model.dart';
import 'package:mobile/src/Features/reminder/data/models%20/task_model.dart';

class StoreTasksLocalService {

  StoreTasksLocalService._();

  static StoreTasksLocalService? _instance = null ;

  static StoreTasksLocalService get instance => _instance ??= StoreTasksLocalService._();

  Future<LocalResponse> applyService({required TaskModel model}) {
    final data = DatabaseHelper.instance.insert<TaskModel>(table: Tables.instance.tasks,data: model);
    return Future.value(LocalResponse(
        data:data,
        message: 'Success',
        statusCode: 202
    ));
  }
}
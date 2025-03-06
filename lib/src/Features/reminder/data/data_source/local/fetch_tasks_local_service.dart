//
// import 'package:dio/src/response.dart';
// import 'package:mobile/src/Base/Core/NetworkStructure/DataSource/service_interface.dart';
// import 'package:mobile/src/Base/Core/NetworkStructure/Params/params.dart';
// import 'package:mobile/src/Base/Core/NetworkStructure/Resources/DataState/data_state.dart';
// import 'package:mobile/src/Features/reminder/core/constants/tabels.dart';
// import 'package:mobile/src/Features/reminder/core/helpers/dataBaseHelper.dart';
// import 'package:mobile/src/Features/reminder/core/response/local_response.dart';
// import 'package:mobile/src/Features/reminder/data/models%20/data_base_model.dart';
// import 'package:mobile/src/Features/reminder/data/models%20/task_model.dart';
//
// class FetchTasksLocalService {
//
//   FetchTasksLocalService._();
//
//   static FetchTasksLocalService? _instance = null ;
//
//   static FetchTasksLocalService get instance => _instance ??= FetchTasksLocalService._();
//
//   DataState<List<TaskModel>> applyService({DataBaseModel? model}) {
//     final data = DatabaseHelper.instance.getData(table: Tables.instance.tasks);
//     return data.map((e) => TaskModel.fromMap(e)).toList();
//   }
// }
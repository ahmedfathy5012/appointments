import 'package:flutter/src/widgets/basic.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Resources/DataState/data_state.dart';
import 'package:mobile/src/Base/Super/Controllers/Resources/get/get_controller_interface.dart';
import 'package:mobile/src/Features/reminder/core/constants/tabels.dart';
import 'package:mobile/src/Features/reminder/core/helpers/dataBaseHelper.dart';
import 'package:mobile/src/Features/reminder/data/models%20/task_model.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/dialogs/dialog_success.dart';

import '../../../../Base/Core/Constants/Strings/assets.dart';
import '../../core/services/notification_service.dart';
import 'package:get/get.dart';


class FetchTasksController extends GetControllerInterface<List<TaskModel>>{
  NotificationService _notificationService = NotificationService();
  void fetchTasks() async {
    emitLoading();
    List<Map<String, dynamic>> data = await DatabaseHelper.instance.getData(table: Tables.instance.tasks);
    print(data);
    emit(
      DataSuccess(
        data.map((e)=>TaskModel.fromMap(e)).toList()
      )
    );
  }


  insertLocal({required TaskModel task}){
    List<TaskModel> tasks = state.data??[];
    tasks.insert(0, task);
    emit(DataSuccess(
      tasks,
        )
    );
  }

  removeTask({required int taskID}){
    List<TaskModel> tasks = state.data??[];
    tasks.removeWhere((element) => element.id == taskID);
    emit(DataSuccess(tasks,));
    _notificationService.cancelNotificationSchedule(taskID);
    DatabaseHelper.instance.delete(table: Tables.instance.tasks, id: taskID);
    Get.dialog(Center(
      child: DialogSuccess(
        title: 'تم حذف الميعاد بنجاح',
        subtitle: 'لا يتم اشعارك بالميعاد المحذوف',
        icon: Assets.lotties.success,
      ),
    ));
  }

  replaceTask({required TaskModel task}){
    List<TaskModel> tasks = state.data??[];
    tasks.removeWhere((element) => element.id == task.id);
    tasks.insert(0, task);
    emit(DataSuccess(tasks,));
  }




  @override
  void onInit() {
    super.onInit();
    fetchTasks();
  }
}
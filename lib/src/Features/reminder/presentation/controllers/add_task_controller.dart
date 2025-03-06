
import 'package:flutter/cupertino.dart';
import 'package:mobile/src/Base/Core/Constants/Strings/assets.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Networking/src/Utils/network_utils.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Resources/DataState/data_state.dart';
import 'package:mobile/src/Base/Core/NetworkStructure/Resources/Errors/error_model.dart';
import 'package:mobile/src/Base/Core/Utils/Validation/app_validator.dart';
import 'package:mobile/src/Base/Super/Controllers/Resources/get/get_controller_interface.dart';
import 'package:mobile/src/Features/reminder/core/constants/tabels.dart';
import 'package:mobile/src/Features/reminder/core/enums/task_type.dart';
import 'package:mobile/src/Features/reminder/core/helpers/dataBaseHelper.dart';
import 'package:mobile/src/Features/reminder/core/services/notification_service.dart';
import 'package:mobile/src/Features/reminder/data/models%20/task_model.dart';
import 'package:get/get.dart';
import 'package:mobile/src/Features/reminder/presentation/controllers/fetch_tasks_controller.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/pages/home_page.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/dialogs/dialog_success.dart';


class AddTaskController extends GetControllerInterface<TaskModel>{
  final TaskModel? task;
  late TextEditingController timeController;
  late TextEditingController nameController;
  List<TaskType> types = [];
  int selectedTypeIndex = 0;


  AddTaskController({ this.task});


  setTypeIndex(int value){
    selectedTypeIndex = value;
    update();
  }


  NotificationService _notificationService = NotificationService();

  FetchTasksController _fetchTasksController = Get.put(FetchTasksController());

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  setTime(String time){
    timeController.text = time;
  }


  void add(){
  NetworkUtils.instance.showDialog(true);
    formValidator(
      globalKey: globalKey,
      onSuccessValidate: () async {
        int id  = await DatabaseHelper.instance.insert<TaskModel>(
          table: Tables.instance.tasks,
          data: TaskModel(
              name: nameController.text,
              taskType: types[selectedTypeIndex].code,
              time: timeController.text,
              id: 0,
              taskTypeName:  types[selectedTypeIndex].name,
              taskTypeCode:  types[selectedTypeIndex].code,
              taskTypeIcon:  types[selectedTypeIndex].icon,

          )
        );

        Map<String,dynamic>? data = await DatabaseHelper.instance.getDataById(
            table: Tables.instance.tasks,
            id: id
        );

        Get.back();
        print(data);
        if(data!=null){
          state = DataSuccess(
             TaskModel.fromMap(data),
          );
          emit(state);
          _fetchTasksController.insertLocal(task: state.data!);
          _notificationService.scheduleDailyNotification(
            id: id,
            title: types[selectedTypeIndex].name,
            subtitle: nameController.text,
            hour: int.parse(timeController.text.split(':')[0]),
            minute: int.parse(timeController.text.split(':')[1]),
          );
        } else{
          state = DataFailed(ErrorModel(
            title: 'An Error Occur',
            type: ErrorType.dirtyData,
          ));
        }
         Get.back();
        Get.dialog(Center(
          child: DialogSuccess(
            title: 'تم اضافة الميعاد بنجاح',
            subtitle: 'سيتم اشعارك بالميعاد المحدد',
            icon: Assets.lotties.success,
          ),
        ));
      },
    );
  }

  void edit(){
    NetworkUtils.instance.showDialog(true);
    formValidator(
      globalKey: globalKey,
      onSuccessValidate: () async {
        int id  = await DatabaseHelper.instance.update<TaskModel>(
            table: Tables.instance.tasks,
            data: TaskModel(
              id: task!.id,
              name: nameController.text,
              taskType: types[selectedTypeIndex].code,
              time: timeController.text,
              taskTypeName:  types[selectedTypeIndex].name,
              taskTypeCode:  types[selectedTypeIndex].code,
              taskTypeIcon:  types[selectedTypeIndex].icon,

            )
        );

        Map<String,dynamic>? data = await DatabaseHelper.instance.getDataById(
            table: Tables.instance.tasks,
            id: id
        );

        Get.back();
        print(data);
        if(data!=null){
          state = DataSuccess(
            TaskModel.fromMap(data),
          );
          emit(state);
          _fetchTasksController.replaceTask(task: state.data!);
          _notificationService.cancelNotificationSchedule(task!.id);
          _notificationService.scheduleDailyNotification(
            id: id,
            title: types[selectedTypeIndex].name,
            subtitle: nameController.text,
            hour: int.parse(timeController.text.split(':')[0]),
            minute: int.parse(timeController.text.split(':')[1]),
          );
        } else{
          state = DataFailed(ErrorModel(
            title: 'An Error Occur',
            type: ErrorType.dirtyData,
          ));
        }
        Get.back();
        Get.dialog(Center(
          child: DialogSuccess(
            title: 'تم تعديل الميعاد بنجاح',
            subtitle: 'سيتم اشعارك بالميعاد المحدد',
            icon: Assets.lotties.success,
          ),
        ));
      },
    );
  }

  void submit(){
    if(task!=null){
      edit();
    }else{
      add();
    }
  }


  setData(){
    if(task!=null){
      nameController.text = task!.name;
      timeController.text = task!.time;
      selectedTypeIndex = types.indexWhere((element) => element.code == task!.taskTypeCode);
    }
  }

  @override
  void onInit() {
    super.onInit();
    timeController = TextEditingController();
    nameController = TextEditingController();
    types = TaskType.example;
    setData();
    update();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    timeController.dispose();
    nameController.dispose();
  }

  }


import 'package:mobile/src/Features/reminder/data/models%20/data_base_model.dart';

class TaskModel extends DataBaseModel{
  final String name;
  final int taskType;
  final String time;

  final String taskTypeName;
  final String taskTypeIcon;
  final int taskTypeCode;



  TaskModel({
    required this.name,
    required this.taskType,
    required this.time,
    required int id,

     this.taskTypeName='',
     this.taskTypeIcon='',
     this.taskTypeCode=0,
  }) : super(id: id);

  @override
  static TaskModel fromMap(Map<String, dynamic> map) {
    return TaskModel(
      name: map['name']??'',
      taskType: map['task_type']??'',
      time: map['time']??0,
      id: map['id']??0,

      taskTypeIcon: map['task_type_icon']??'',
      taskTypeName: map['task_type_name']??'',
      taskTypeCode: map['task_type_code']??0,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'task_type': taskType,
      'time': time,
      'task_type_icon':taskTypeIcon,
      'task_type_name':taskTypeName,
      'task_type_code':taskTypeCode
    };
  }


  static List<TaskModel> example = [
    TaskModel(
        name: 'معاد دكتور تغذيه',
        taskType: 2,
        time: '12:30',
        id: 1
    ),
    TaskModel(
        name: 'معاد دكتور تغذيه',
        taskType: 2,
        time: '12:30',
        id: 1
    ),
    TaskModel(
        name: 'معاد دكتور تغذيه',
        taskType: 2,
        time: '12:30',
        id: 1
    ),
    TaskModel(
        name: 'معاد دكتور تغذيه',
        taskType: 2,
        time: '12:30',
        id: 1
    ),
  ];

}
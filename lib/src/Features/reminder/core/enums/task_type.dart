import 'package:mobile/src/Base/Core/Constants/Strings/assets.dart';

class TaskType {
  final int code;
  final String name;
  final String icon;

  const TaskType({
    required this.code,
    required this.name,
    required this.icon,
  });

 static List<TaskType> example = [
   TaskType(
     name: 'مواعيد دكاتره',
     code: 1,
     icon: Assets.icons.medicine,
   ),
   TaskType(
     name: 'مواعيد تغذيه',
     code: 2,
     icon: Assets.icons.medicine,
   ),
   TaskType(
     name: 'مواعيد المياة',
     code: 3,
     icon: Assets.icons.medicine,
   ),

  ];
}
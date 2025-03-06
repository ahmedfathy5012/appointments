import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:get/get.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/pages/add_task_page.dart';
class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(AddTaskPage());
      },
      child: Container(
        height: 50.toH(),
        width: 50.toH(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.toRad()),
          color: AppColors.get.main
        ),
        child: Icon(Icons.add_alarm_outlined,color: AppColors.get.white,),
      ),
    );
  }
}

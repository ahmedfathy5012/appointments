import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/material.dart';

class ChoiceMultiCircle extends StatelessWidget {
  final bool active;

  const ChoiceMultiCircle({super.key, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.toW(),
      height: 24.toH(),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.toRad()),
        border: Border.all(
          color: active ? AppColors.get.transparent : AppColors.get.greyLight,
          width: 1.toW(),
        ),
        color: active? AppColors.get.primary : AppColors.get.transparent,
      ),
      child:  Center(
        child: Center(
          child: Icon(Icons.check,color: AppColors.get.white,size: 18.toH()),
        ),
      ),
    );
  }
}

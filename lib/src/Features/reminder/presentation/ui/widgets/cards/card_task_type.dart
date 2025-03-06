import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Constants/Strings/assets.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import '../../../../core/enums/task_type.dart';

class CardTaskType extends StatelessWidget {
  final TaskType type;
  final bool isActive;
  const CardTaskType({super.key, required this.type,  this.isActive=false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.toRad()),
        color: isActive?AppColors.get.white:AppColors.get.white.withOpacity(.6),
        border: Border.all(
          color: isActive?AppColors.get.greyUltraLight:AppColors.get.white,
          width: isActive?2:0,
        ),
      ),
      duration: const Duration(milliseconds: 300),
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 11.toW(),
          vertical: 11.toH(),
        ),
        child: Row(
          children: [
            Image.asset(
              Assets.icons.medicine,
              height: 18.toH(),
            ),
            4.ESW(),
            CustomText(
              type.name,
              color: AppColors.get.black,
              fontSize: 12,
              fontWeight: FW.semiBold,
            ),
          ],
        ),
      ),
    );
  }
}

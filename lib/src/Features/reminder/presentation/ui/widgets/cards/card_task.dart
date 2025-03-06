import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/Animation/animated_wrapper.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:mobile/src/Features/reminder/core/services/notification_service.dart';
import 'package:mobile/src/Features/reminder/data/models%20/task_model.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/cards/card_check.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/panes/delete_pane.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/panes/update_pane.dart';

import '../../../../../../Base/Core/Constants/Strings/assets.dart';

class CardTask extends StatelessWidget {
  final TaskModel task;
  final VoidCallback? onDelete;
  final VoidCallback? onUpdate;
  const CardTask({super.key, required this.task, this.onDelete, this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return AnimatedWrapper(
      styles: WrapAnimationStyles.flip,
      child: Slidable(
        endActionPane: ActionPane(
            motion: Row(
              children: [
                DeletePane(
                  onTap: () {
                    Slidable.of(context)?.close();
                    if(onDelete!=null){
                      onDelete!();
                    }
                  },
                ),
                8.ESW(),
                UpdatePane(
                  onTap: () {
                      Slidable.of(context)?.close();
                      if(onUpdate!=null){
                        onUpdate!();
                      }
                  },
                ),
              ],
            ),
            children: [
              Center()
            ]
        ),
        dragStartBehavior: DragStartBehavior.down,
        closeOnScroll: true,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.toW()),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.get.scaffoldBackGroundGrey,
              borderRadius: BorderRadius.circular(10.toRad()),
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 10.toW(),
                vertical: 10.toH(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Image.asset(
                     task.taskTypeIcon,
                     height: 24.toH(),
                   ),
                  8.ESW(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          task.taskTypeName??'',
                          fontSize: 11,
                          fontWeight: FW.regular,
                          color: AppColors.get.main,
                        ),
                        CustomText(
                          task.name??'',
                          fontSize: 15,
                          fontWeight: FW.semiBold,
                          color: AppColors.get.subtitle,
                        ),
                        CustomText(
                          task.time??'',
                          fontSize: 15,
                          fontWeight: FW.semiBold,
                          color: AppColors.get.black,
                        ),
                      ],
                    ),
                  ),
                  true?
                      SizedBox(
                        width: 10,
                      ):
                  CardCheck(
                    onTap: (){},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

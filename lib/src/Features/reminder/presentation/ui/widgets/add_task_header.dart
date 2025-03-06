import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/src/Base/Core/Constants/Strings/assets.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/button_back.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Image/image_network.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:mobile/src/Features/reminder/core/enums/task_type.dart';
import 'package:mobile/src/Features/reminder/presentation/controllers/add_task_controller.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/sliders/slider_card_task_type.dart';

class AddTaskHeader extends StatelessWidget{

  AddTaskHeader(
      {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddTaskController>(
      builder:(cnt) =>  Column(
        children: [
          Container(
              color: AppColors.get.transparent,
              width: double.infinity,
              height: 233.toH(),
              child:Stack(
                children: [
                  Container(
                    color: AppColors.get.blueBlack,
                    height: 233.toH(),
                    child:  Image.asset(
                      Assets.patterns.teacherPattern,
                      width: double.infinity,
                      height: 233.toH(),
                      color: AppColors.get.white.withOpacity(0.03),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      bottom: 24.toH(),
                    ),
                    child: Container(
                      height: 233.toH(),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(
                          horizontal: 16.toW(),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(
                                  top: 40.toH()
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ButtonBack(
                                    borderColor: AppColors.get.white.withOpacity(.5),
                                    iconColor: AppColors.get.white.withOpacity(.5),
                                  ),
                                 Column(
                                   children: [
                                     CustomText(
                                       'add_appointment',
                                       color: AppColors.get.white,
                                       fontWeight: FW.bold,
                                       fontSize: 16,
                                     ),
                                     8.ESH(),
                                     CustomText(
                                       'choose_type',
                                       color: AppColors.get.grey,
                                       fontWeight: FW.semiBold,
                                       fontSize: 14,
                                     ),
                                   ],
                                 ),
                                  SizedBox(width: 40.toW(),)
                                ],
                              ),
                            ),
                            SliderCardTaskType(
                              types: cnt.types,
                              selectedIndex: cnt.selectedTypeIndex,
                              onTap: (value){
                                cnt.setTypeIndex(value);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }

}

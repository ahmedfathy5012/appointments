import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/button_back.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Image/image_network.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import '../../../../../../Base/Core/Constants/Strings/assets.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? toolbarHeight;
  final double? bottomHeight;

  HomeAppBar(
      {
        Key? key,
        this.toolbarHeight=100,
        this.bottomHeight,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.get.transparent,
        width: double.infinity,
        height: 100.toH(),
        child:Stack(
          children: [
            Container(
              color: AppColors.get.blueBlack,
              height: 100.toH(),
              child:  Image.asset(
                Assets.patterns.teacherPattern,
                width: double.infinity,
                height: 100.toH(),
                color: AppColors.get.white.withOpacity(0.03),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 100.toH(),
              child: Padding(
                padding:  EdgeInsets.only(
                  top: 40.toH(),
                  left: 16.toW(),
                  right: 16.toW(),
                  bottom: 16.toH(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ButtonBack(
                    //   borderColor: AppColors.get.white.withOpacity(.5),
                    //   iconColor: AppColors.get.white.withOpacity(.5),
                    // ),
                    CustomText(
                      'my_appointments',
                      color: AppColors.get.white,
                      fontWeight: FW.bold,
                      fontSize: 16,
                    ),
                    SizedBox(width: 40.toW(),)
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight((toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));
}

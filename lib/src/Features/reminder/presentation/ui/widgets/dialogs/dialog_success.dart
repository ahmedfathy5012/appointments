import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:lottie/lottie.dart';


class DialogSuccess extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  const DialogSuccess({super.key, this.title='',  this.subtitle='', this.icon=''});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.toH(),
      width: 300.toW(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.toRad()),
        color: AppColors.get.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon.contains('.json')?
          Lottie.asset(
            icon,
            height: 100.toH(),
            fit: BoxFit.cover,
          ):
          Image.asset(
            icon,
            height: 70.toH(),
          ),
          6.ESH(),
          CustomText(
            title,
            color: AppColors.get.black,
            fontWeight: FW.bold,
            fontSize: 15,
          ),
          6.ESH(),
          CustomText(
            subtitle,
            color: AppColors.get.subtitle,
            fontWeight: FW.regular,
            fontSize: 15,
          ),
        ],
      ),
    );
  }
}

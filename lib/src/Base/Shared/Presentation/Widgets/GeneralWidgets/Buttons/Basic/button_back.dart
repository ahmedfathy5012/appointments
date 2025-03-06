import 'package:mobile/src/Base/Core/Constants/Strings/assets.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ButtonBack extends StatelessWidget {
  final double? width;
  final double? height;
  final VoidCallback? onTap;
  final Color? borderColor;
  final Color? iconColor;
  const ButtonBack({Key? key, this.height, this.width, this.onTap, this.borderColor, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 32.toW(),
      height: height ?? 32.toW(),
      decoration: BoxDecoration(
        color: AppColors.get.transparent,
        borderRadius: BorderRadius.circular(32.toRad()),
        border: Border.all(
          color: borderColor??AppColors.get.greyBorder,
          width: 1.toW(),
        ),
      ),
      child: IconButton(
          onPressed: () {
            if (onTap != null) {
              onTap!();
            }
            Get.back();
            // SystemChrome.setPreferredOrientations([
            //   DeviceOrientation.portraitUp,
            //   DeviceOrientation.portraitDown,
            // ]);
          },
          icon: Center(
            child: Image.asset(
              Assets.icons.arrowLeft,
              color: iconColor??AppColors.get.black,
              height: 24.toH(),
            ),
          )),
    );
  }
}

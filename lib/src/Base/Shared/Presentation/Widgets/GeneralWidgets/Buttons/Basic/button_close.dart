import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonClose extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? closeColor;
  const ButtonClose(
      {super.key, this.onTap, this.backgroundColor, this.closeColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            Get.back();
          },
      child: Container(
        height: 25.toH(),
        width: 25.toH(),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: backgroundColor ?? AppColors.get.grey.withOpacity(.3)),
        child: Center(
          child: Icon(
            Icons.close,
            color: closeColor ?? AppColors.get.black,
            size: 14.5.h,
          ),
        ),
      ),
    );
  }
}

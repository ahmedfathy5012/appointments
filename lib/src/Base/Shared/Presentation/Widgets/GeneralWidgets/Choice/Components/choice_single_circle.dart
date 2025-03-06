import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoiceSingleCircle extends StatelessWidget {
  final bool isActive;
  final double height;
  final double width;

  const ChoiceSingleCircle({
    super.key,
    this.isActive = false,
    this.height = 15,
    this.width = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.toH(),
      height: height.toH(),
      child: Stack(
        children: [
          Container(
            width: width.toH(),
            height: height.toH(),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              border: Border.all(
                width: 1,
                color: isActive ? MainColors.get.main : AppColors.get.grey,
              ),
            ),
          ),
          isActive
              ? Center(
                  child: Container(
                    width: (width - 4).toH(),
                    height: (height - 4).toH(),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: isActive
                          ? MainColors.get.main
                          : AppColors.get.transparent,
                    ),
                  ),
                )
              : 0.ESH(),
        ],
      ),
    );
  }
}

import 'package:mobile/src/Base/Core/constants/decorations/app_sizes.dart';
import 'package:mobile/src/Base/Core/utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'base_button.dart';

enum ButtonStyle { withBorder, withOutBorder }

class ButtonDefault extends StatelessWidget {
  final String title;
  final String iconImage;
  final Color? buttonColor;
  final Color? disActiveButtonColor;

  final Color? titleColor;
  final Color? iconColor;
  final VoidCallback? onTap;
  final double height;
  final double width;
  final double radius;
  final double titleSize;
  final double iconHeight;
  final Color? borderColor;
  final Color? disActiveBorderColor;
  final bool? active;
  final Widget? child;

  final MainAxisAlignment contentAlignment;
  const ButtonDefault(
      {Key? key,
      this.child,
      this.borderColor,
      this.disActiveButtonColor,
      //= AppColors.get.d,
      this.disActiveBorderColor, // = AppColors.buttonDisabled,
      this.titleSize = 14,
      this.iconHeight = 18,
      this.radius = AppSizes.radius,
      this.title = '',
      this.iconImage = '',
      this.buttonColor,
      this.titleColor = Colors.white,
      this.iconColor = Colors.white,
      this.onTap,
      this.height = 52,
      this.width = 343,
        this.contentAlignment = MainAxisAlignment.center,
      this.active = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      height: height,
      width: width,
      radius: radius.r,
      borderColor: active! ? borderColor : disActiveBorderColor,
      buttonColor: active! ? buttonColor : disActiveButtonColor,
      onTap: onTap,
      child: child ?? drawChild(),
    );
  }

  Widget drawChild() {
    if (title.isNotEmpty && iconImage.isEmpty) {
      //  return text only
      return Center(
        child: CustomText(
          title,
          color: titleColor ?? Colors.white,
          fontSize: titleSize,
          fontWeight: FW.medium,
        ),
      );
    } else if (title.isEmpty && iconImage.isNotEmpty) {
      //  return icon only
      return Center(
          child: Image.asset(
        iconImage,
        color: iconColor,
        height: iconHeight,
      ));
    } else if (title.isNotEmpty && iconImage.isNotEmpty) {
      //  return icon and text
      return Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.toW()),
          child: Row(
            mainAxisAlignment: contentAlignment,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                title,
                color: titleColor ?? Colors.white,
                fontSize: titleSize,
                fontWeight: FW.semiBold,
              ),
              7.0.ESW(),
              Image.asset(
                iconImage,
                color: iconColor ?? Colors.white,
                height: iconHeight,
              )
            ],
          ),
        ),
      );
    } else {
      //  return text only
      //
      return Center(
        child: CustomText(
          title,
          color: titleColor ?? Colors.white,
          fontSize: titleSize,
          fontWeight: FW.light,
        ),
      );
    }
  }
}

import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class TitleViewAll extends StatelessWidget {
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final double verticalPadding;
  final double horizontalPadding;
  final double titleSize;
  const TitleViewAll({Key? key,
    this.verticalPadding=0,
    this.horizontalPadding=8,
    this.titleSize = 16,
    this.subtitle,required this.title,this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: horizontalPadding.toW(),
          vertical: verticalPadding.toH()
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            title,
            color: AppColors.get.black,
            fontWeight: FW.bold,
            fontSize: titleSize,
          ),
          GestureDetector(
            onTap: onTap??(){},
            child: CustomText(
              subtitle??"show_all",
              color: AppColors.get.grey,
              fontWeight: FW.regular,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

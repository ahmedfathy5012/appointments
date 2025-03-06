 import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Spaces&Dividers/custom_divider.dart';

class SheetIndicator extends StatelessWidget {

  final double verticalSpacing ;
  const SheetIndicator({Key? key, this.verticalSpacing=20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        XDivider.normal(
          color: AppColors.get.opposite,
          verticalPadding: verticalSpacing.toH(),
          horizontalPadding: 150.toW(),
        ),
        SizedBox(
          height: 5.toH(),
        ),
      ],
    );
  }
}

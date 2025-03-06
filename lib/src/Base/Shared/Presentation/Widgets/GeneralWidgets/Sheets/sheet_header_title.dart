import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/button_close.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';

class SheetHeaderTitle extends StatelessWidget {
  final String title;

  const SheetHeaderTitle({super.key, this.title=''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.toW()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonClose(),
          CustomText(title,),
          0.ESW()
        ],
      ),
    );
  }
}

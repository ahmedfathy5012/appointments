import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/button_default.dart';

class SheetFooterBasic extends StatelessWidget {
  final String title;
   final VoidCallback? onPressed;

  const SheetFooterBasic({
    Key? key,
      this.title = 'save' ,
     required  this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: 16.0.toW(), vertical: 16.0.toH()),
      child: ButtonDefault(
        title: title,
        onTap: onPressed,
      ),
    );
  }
}

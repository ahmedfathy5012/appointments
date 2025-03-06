import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/snap.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/button_close.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Interface/sheet_header_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Options/sheet_header_option.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Utils/Constants/sheet_constants.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class SheetHeaderBasic extends SheetHeaderInterface {
  final String title;
  final Widget? action;
  final Widget? closeAction;
  final VoidCallback? onClose;
  SheetHeaderOptions ?  options;
    SheetHeaderBasic({
    super.key,
    this.title = '',
    this.action,
    this.options ,
    this.closeAction, this.onClose,
  }){
    options ??=  SheetHeaderOptions();
    }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SheetConstants.get.headerPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          closeAction ??   ButtonClose(onTap:onClose?? () => Snap.back() ),
          CustomText(
            title,
            fontSize: SheetConstants.get.headerTextSize,
            fontWeight: SheetConstants.get.headerTextWeight,
          ),
          action ?? 0.ESW(),
        ],
      ),
    );
  }
}

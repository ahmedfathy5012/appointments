import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/sheet_header.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Interface/sheet_header_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Options/sheet_header_option.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Resources/sheet_header_basic.dart';

class SheetHeader {
  SheetHeader._();

  static final instance = SheetHeader._();

  SheetHeaderInterface basic({
    String title = '',
    SheetHeaderOptions? options,
    Widget? action,
    Widget? closeAction,
    Function()? onClose,
  }) {
    return SheetHeaderBasic(
      title: title,
      action: action,
      closeAction: closeAction,
      options: options,
      onClose: onClose,
    );
  }
}






import 'package:mobile/src/Base/Core/Libraries/snap/snap.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/src/snap_overlay/src/sheet/extension_sheet.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/constants/decorations/app_shapes.dart';
import 'package:mobile/src/Base/Shared/Entities/title_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Interface/sheet_header_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Resources/sheet_single_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSheets {
  AppSheets._();
  static AppSheets get get => AppSheets._();

  void closeOpenSheets() {
    if (Get.isBottomSheetOpen == true) {
      Get.back();
    }
  }

  void showBottomSheet(
    Widget sheetBody, {
    bool isDismissible = true,
    Color? backgroundColor,
  }) {
    Snap.bottomSheet(
      sheetBody,
      backgroundColor: backgroundColor ?? MainColors.get.main,
      elevation: 2,
      shape: AppShapes.bottomSheetShape,
      isDismissible: isDismissible,
      barrierColor: Colors.black87.withOpacity(0.7),
      enableDrag: true,
      isScrollControlled: true,
    );
  }

  void showSingleSelection<T extends TitleInterface>(
      {String title = '',
      List<T> items = const [],
      int selectedId = -1,
      required Function(T) onSave,
      SheetHeaderInterface? header}) {
    Snap.bottomSheet(
      SheetSingleSelect<T>(
        onSave: onSave,
        items: items,
        title: title,
        selectedId: selectedId,
        header: header,
      ),
      enableDrag: true,
      isScrollControlled: true,
    );
  }

  void showMultiSelection() {}
  void showCountrySelection() {}
}

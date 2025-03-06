import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/translate_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Resources/sheet_header_basic.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Resources/sheet_multi_select.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Resources/sheet_single_select.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../../../Core/Constants/Strings/assets.dart';
import '../../../../../Core/Styles/Colors/app_colors.dart';
import '../../../../../Core/Utils/Validation/Implementation/DefaultValidator/default_validator.dart';
import '../../../../../Core/Utils/general_utils.dart';
import '../../../../Entities/title_interface.dart';
import '../TextFields/Default/default_text_field.dart';
import 'app_Sheet.dart';

class GeneralSelectSheet<T extends TitleInterface> extends StatelessWidget {
  final String title;
  final int selectedId;
  final String? hintText;
  final String? headerText;
  final List<T> items;
  final Function(T) onSelected;
  final TextEditingController controller;
  final double? headerTextSize;
  final String? prefix;
  final FontWeight? headerFontWeight;
  final double? sheetHeight;
  final VoidCallback? onTap;
  final Widget Function(T)? builder;
  final double horizontal;
  final Color? filColor;
  const GeneralSelectSheet({
    super.key,
    required this.title,
    this.hintText,
    required this.items,
    required this.onSelected,
    required this.controller,
    this.headerText,
    required this.selectedId,
    this.headerTextSize,
    this.prefix,
    this.headerFontWeight,
    this.sheetHeight,
    this.onTap,
    this.builder,
    this.horizontal = 10,
    this.filColor,
  });

  @override
  Widget build(BuildContext context) {
    var node = FocusNode();

    return GestureDetector(
      onTap: onTap ??
          () {
            AppSheets.get.showBottomSheet(
              SheetSingleSelect<T>(
                // builder: builder,
                header: SheetHeaderBasic(),
                height: sheetHeight ?? 400.toH(),
                selectedId: selectedId,
                title: title,
                onSave: (value) {
                  Get.back();
                  onSelected(value);
                  printDM('Select Value$value');
                },
                items: items,
              ),
            );
          },
      child: TextFieldDefault(
        surroundingPadding: EdgeInsets.symmetric(horizontal: horizontal),
        hint: TFFHint(
          title: hintText ?? "".toTr(),
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.get.grey,
        ),
        fillColor: filColor ?? AppColors.get.white,
        header: TFFHeader(
          title: headerText ?? "".toTr(),
          fontSize: headerTextSize ?? 14,
          fontWeight: headerFontWeight ?? FontWeight.normal,
          color: AppColors.get.black,
        ),
        suffix: SuffixWithIconImage(
          scale: 1.3,
          iconImage: Assets.authIcons.arrowDown,
          color: Colors.black,
          constraintsHeight: 8.toH(),
        ),
        prefix: prefix != null
            ? PrefixWithIconImage(
                constraintsWidth: 30,
                scale: 1.2,
                iconImage: prefix!,
                color: AppColors.get.grey
                //constraintsHeight: 30.toH(),
                )
            : const PrefixNone(),
        enable: false,
        // readOnly: true,
        validation: DefaultValidator.instance.validate,
        controller: controller,
        onComplete: () {
          node.nextFocus();
        },
        readOnly: true,
      ),
    );
  }
}

class GeneralMultiSelectSheet<T extends TitleInterface>
    extends StatelessWidget {
  final String title;
  final List<int> selectedIds;
  final String? hintText;
  final String? headerText;
  final List<T> items;
  final Function(List<T> list) onSelected;
  final TextEditingController controller;
  final double? headerTextSize;
  final Widget Function(T item)? builder;

  const GeneralMultiSelectSheet({
    super.key,
    required this.title,
    this.hintText,
    required this.items,
    required this.onSelected,
    required this.controller,
    this.headerText,
    required this.selectedIds,
    this.headerTextSize,
    this.builder,
  });

  @override
  Widget build(BuildContext context) {
    var node = FocusNode();

    return GestureDetector(
      onTap: () {
        AppSheets.get.showBottomSheet(
          SheetMultiSelect<T>(
            builder: builder,
            selectedIds: selectedIds,
            title: title,
            onSave: (value) {
              onSelected(value);
            },
            items: items,
          ),
        );
      },
      child: TextFieldDefault(
          hint: TFFHint(
            title: hintText,
          ),
          header: TFFHeader(
            title: headerText,
            fontSize: headerTextSize,
          ),
          fillColor: AppColors.get.cardFill,
          // prefix: PrefixWithIconImage(

          //     constraintsWidth: 30,
          //     scale: 1.2,
          //     iconImage: Assets.icons.c,
          //     color: AppColors.get.grey
          //     //constraintsHeight: 30.toH(),
          //     ),
          suffix: SuffixWithIconImage(
            scale: 0.5,
            size: 20,
            iconImage: Assets.authIcons.arrowDown,
            constraintsHeight: 30.toH(),
          ),
          enable: false,
          // validation: DefaultValidator.instance.validate,
          controller: controller,
          onComplete: () {
            node.nextFocus();
          },
          inputDecoration: InputDecorationWithBorder(
            // enableBorderRadius: 12,
            errorBorderRadius: 8.toRad(),
            borderColor: AppColors.get.tTFDisableBorder,
            disableBorderColor: AppColors.get.tTFDisableBorder,
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/translate_extension.dart';
import 'package:mobile/src/Base/Shared/Entities/title_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/app_Sheet.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/TextFields/Default/default_text_field.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/TextFields/Default/src/Default/Components/Prefix/Abstract/prefix_imp.dart';
import '../../../../../../Core/Constants/Strings/assets.dart';
import 'package:get/get.dart';



class TextFieldSelect<T extends TitleInterface> extends StatelessWidget {
  final String? hint;
  final String? header;
  final PrefixImp prefix;
  final String title;
  final String? Function(String?)? validation;
  final List<T> items;
  final Function(T) onSave;
  final TextEditingController? controller;
  final int selectedId;

  const TextFieldSelect({
    Key? key,
    this.hint,
    this.prefix = const PrefixNone(),
    this.header,
    required this.title,
    this.validation,
    required this.items,
    required this.onSave,
    this.controller,
    this.selectedId = -1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldDefault(
      onTap: () {
        AppSheets.get.showSingleSelection<T>(
          title: title,
          selectedId: selectedId,
          onSave: (T value) {
            Get.back();
            onSave(value);
          },
          items: items,
        );
      },
      prefix: prefix!,
      hint: hint != null
          ? TFFHint(
        title: hint!.toTr(),
      )
          : const TFFHint(),
      header: header != null ? TFFHeader(title: header) : const TFFNone(),
      suffix: SuffixWithIconImage(
        iconImage: Assets.icons.arrowDown,
        size: 15.toRad(),
      ),
      validation: validation,
      readOnly: true,
      controller: controller,
      // onComplete: (){
      //   node.nextFocus();
      // },
    );
  }
}

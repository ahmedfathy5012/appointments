import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Entities/title_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Choice/Resources/single_choice_body.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Body/sheet_body_default.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Interface/sheet_header_interface.dart';

class SheetSingleSelect<T extends TitleInterface> extends StatelessWidget {
  final String title;
  final SheetHeaderInterface? header;
  final int selectedId;
  final Function(T) onSave;
  final List<T> items;
  final double? height;

  const SheetSingleSelect({
    super.key,
    this.title = '',
    this.header,
    required this.onSave,
    required this.items,
    this.selectedId = -1,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SheetDefaultBody(
      title: title,
      height: height ?? 500.toH(),
      child: SingleChoiceBody<T>(
        items: items,
        selectedId: selectedId,
        onSave: (value) {
          onSave(value);
        },
      ),
    );
  }
}

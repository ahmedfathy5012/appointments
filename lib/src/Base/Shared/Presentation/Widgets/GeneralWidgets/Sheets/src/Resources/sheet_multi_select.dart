import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/snap.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Entities/title_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/button_default.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Choice/Resources/multi_choice_body.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Choice/Components/choice_multi_row.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Body/sheet_body_default.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Interface/sheet_header_interface.dart';

class SheetMultiSelect<T extends TitleInterface> extends StatefulWidget {
  final String title;
  final SheetHeaderInterface? header;
  final List<int>? selectedIds;
  final Function(List<T>) onSave;
  final List<T> items;
  final Widget Function(T item)? builder;
  const SheetMultiSelect({
    super.key,
    this.title = '',
    this.header,
    required this.onSave,
    required this.items,
    this.selectedIds,
    this.builder,
  });

  @override
  State<SheetMultiSelect<T>> createState() => _SheetMultiSelectState<T>();
}

class _SheetMultiSelectState<T extends TitleInterface>
    extends State<SheetMultiSelect<T>> {
  List<T> selectedItems = [];
  List<int> localSelectedIds = [];

  @override
  void initState() {
    super.initState();
    if (widget.selectedIds != null) {
      localSelectedIds.addAll(widget.selectedIds!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SheetDefaultBody(
        title: widget.title,
        height: 500.toH(),
        footer: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 16.toW(), vertical: 16.toH()),
          child: ButtonDefault(
            title: 'save',
            onTap: () {
              selectedItems = [];
              for (var element in widget.items) {
                if (localSelectedIds.contains(element.id)) {
                  selectedItems.add(element);
                }
              }
              widget.onSave(selectedItems);
              Snap.back();
            },
          ),
        ),
        child: MultiChoiceBody<T>(
          items: widget.items,
          selectedIds: localSelectedIds,
          onTap: (value) {
            setState(() {
              if (localSelectedIds.contains(value.id)) {
                localSelectedIds.remove(value.id);
              } else {
                localSelectedIds.add(value.id);
              }
            });
          },
          builder: widget.builder,
        ));
  }
}

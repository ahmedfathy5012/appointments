 import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/Adaptive/Picker/adaptive_picker.dart';

class SheetTimePicker extends StatelessWidget {
  final String? title;
  final DateTime initial;
  final Function(DateTime? date) onConfirm;

  const SheetTimePicker({
    Key? key,
    this.title,
    required this.onConfirm,
    required  this.initial,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptivePicker.cupertinoTimePicker(
      context,
      title ?? "",
      onConfirm: onConfirm,
      initial: initial,

    );
  }
}

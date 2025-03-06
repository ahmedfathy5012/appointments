import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'dart:math' as math ;

class StackedWaterMarkBuilder extends StatelessWidget {
  final Widget child;
  const StackedWaterMarkBuilder({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        child,
        AbsorbPointer(
          child: Transform.rotate(
            angle: (math.pi) / 3.8,
            child: CustomText(
              "",
              // (UserCache.instance.getUser().phone ?? "").toString(),
              color: Colors.black12,
              fontSize: 110,
              letterSpacing: 4,

            ),
          ),
        ),
      ],
    );
  }
}

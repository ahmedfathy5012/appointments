import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/material.dart';

class IconBuilder extends StatelessWidget {
  final String icon;
  const IconBuilder({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.toH(),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 87.toH(),
                width: 87.toH(),
                decoration: BoxDecoration(
                  color: MainColors.get.main.withOpacity(.15),
                  borderRadius: BorderRadius.circular(87.toW()),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              icon,
              height: 63.toH(),
            ),
          ),
        ],
      ),
    );
  }
}

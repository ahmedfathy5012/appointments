import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Constants/Strings/assets.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';

class CardCheck extends StatelessWidget {
  final bool isActive;
  final VoidCallback onTap;
  const CardCheck({super.key,  this.isActive=false, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onTap!=null){
          onTap();
        }
      },
      child: AnimatedContainer(
        height: 24.toH(),
        width: 24.toH(),
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.toRad()),
          color: isActive?AppColors.get.red.withOpacity(.3):AppColors.get.transparent,
          border: Border.all(
            color: isActive?AppColors.get.red:AppColors.get.subtitle,
            width: 1,
          ),
        ),
        child: Center(
          child: Image.asset(
            Assets.icons.check,
            height: 16.toH(),
          ),
        ),
      ),
    );
  }
}

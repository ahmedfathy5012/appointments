import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';

class UpdatePane extends StatelessWidget {
  final VoidCallback onTap;
  const UpdatePane({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          if(onTap!=null){
            onTap();
          }
        },
        child: Container(

          decoration: BoxDecoration(
            color: AppColors.get.green,
            borderRadius: BorderRadius.circular(10.toRad())
          ),
          child: Center(
            child: Icon(Icons.edit,color: AppColors.get.white,),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/sheet_header.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/sheet_header_title.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Interface/sheet_header_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/src/Components/Headers/Resources/sheet_header_basic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SheetDefaultBody extends StatelessWidget {
  final String title;
  final SheetHeaderInterface? header;
  final Widget child;
  final double height;
  final Widget? footer;

  const SheetDefaultBody({
    super.key,
    this.title = '',
    this.child = const SizedBox(),
    this.height = 330,
    this.footer,
    this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.r),
            topLeft: Radius.circular(15.r),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            getHeader(),
            // SheetHeaderTitle(
            //   title: title,
            // ),
             Divider(
              color: AppColors.get.greyLight,
            ),
            Expanded(
              child: child,
            ),
            if (footer != null) footer!,
          ],
        ));
  }
  Widget getHeader(){
    if(title.isNotEmpty){
      return SheetHeaderBasic(
        title: title,
      );
    }
    return header??const SizedBox();
  }
}

import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Constants/Strings/assets.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/button_default.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:get/get.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/pages/add_task_page.dart';
class IllustrationNotFound extends StatelessWidget {

  const IllustrationNotFound({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.toW()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.illustrations.notFound,
            height: 200.toH(),
          ),
          16.ESH(),
          CustomText(
            'عذرا.. لايوجد لديك اى مواعيد بعد!',
            fontSize: 16,
            fontWeight: FW.bold,
            color: AppColors.get.black,
          ),
          16.ESH(),
          ButtonDefault(
            title: 'اضافة موعد',
            onTap: (){
              Get.to(AddTaskPage());
            },
          )

        ],
      ),
    );
  }
}

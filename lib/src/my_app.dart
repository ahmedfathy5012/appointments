import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/pages/add_task_page.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/pages/home_page.dart';
import 'Base/Core/App/app_material.dart';
import 'Base/Core/Constants/Decorations/app_sizes.dart';
import 'Base/Core/Styles/Colors/app_colors.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.get.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark,
    ));
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ScreenUtilInit(
        designSize: AppSizes.screenSize,
        minTextAdapt: true,
        builder: (context, child) {
          child = AppMaterial(
            home: HomePage()
            // home: AudioPlayerTest(),
          );
          return child;
        },
      ),
    );
  }
}

// import 'package:papers/app_info_keys.dart';
// import 'package:mobile/src/Base/Core/Themes/color_palette.dart';
// import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
// import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
//
// abstract class Themes {
//   static ThemeData light = ThemeData(
//    platform: (getOS==ios)?TargetPlatform.iOS:TargetPlatform.android,
//     androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
//     /// call method later
//     primarySwatch: ColorPalette.palette[0].colors,
//     tabBarTheme: TabBarTheme(
//       indicator: BoxDecoration(
//         color: Colors.transparent,
//         border: Border(
//           bottom: BorderSide(
//             color: AppColors.get.primary,
//             width: 2,
//           ),
//         ),
//       ),
//       labelColor: Colors.black,
//       unselectedLabelColor: Colors.grey,
//       labelStyle: TextStyle(
//         fontSize: 11,
//         fontWeight: FontWeight.w600,
//       ),
//       unselectedLabelStyle: TextStyle(
//         fontSize: 11,
//         fontWeight: FontWeight.w600,
//       ),
//     ),
//     appBarTheme: AppBarTheme(
//       color: AppColors.get.appbar,
//       elevation: 0.2,
//       shadowColor: AppColors.get.shadow,
//       titleTextStyle: TextStyle(
//         color: AppColors.get.appbarTitle,
//         fontSize: 22.0.toFS(),
//         fontWeight: FontWeight.w500,
//       ),
//       centerTitle: true,
//       toolbarHeight: kToolbarHeight,
//       toolbarTextStyle: TextStyle(
//         color: AppColors.get.title,
//         fontSize: 17.0.toFS(),
//         fontWeight: FontWeight.w400,
//       ),
//       systemOverlayStyle: const SystemUiOverlayStyle(
//         statusBarBrightness: Brightness.light,
//         statusBarIconBrightness: Brightness.dark,
//         systemStatusBarContrastEnforced: false,
//         statusBarColor: Colors.transparent,
//       ),
//       iconTheme: IconThemeData(color: AppColors.get.icon, size: 28.toRad()),
//       actionsIconTheme:
//       IconThemeData(color: AppColors.get.icon, size: 28.toRad()),
//     ),
//     applyElevationOverlayColor: true,
//     backgroundColor: AppColors.get.background,
//     bannerTheme: MaterialBannerThemeData(
//       backgroundColor: AppColors.get.red,
//       contentTextStyle: const TextStyle(color: Colors.white),
//       leadingPadding: const EdgeInsets.all(8),
//       elevation: 8,
//       padding: const EdgeInsets.all(8),
//     ),
//     bottomNavigationBarTheme:   BottomNavigationBarThemeData(
//       backgroundColor: AppColors.get.background,
//       selectedItemColor:AppColors.get.bnbSelectedItem,
//       selectedLabelStyle: TextStyle(color: AppColors.get.bnbSelectedItem,fontSize: 14.toFS()),
//       unselectedLabelStyle: TextStyle(color: AppColors.get.bnbUnSelectedItem,fontSize: 14.toFS()),
//       unselectedItemColor:AppColors.get.bnbUnSelectedItem,
//       elevation: 20,
//
//       enableFeedback: true,
//       showUnselectedLabels: false,
//       showSelectedLabels: false,
//       type: BottomNavigationBarType.shifting,
//
//     ),
//     bottomAppBarTheme: BottomAppBarTheme(
//       color: MainColors.get.main,
//       elevation: 8,
//       shape: const CircularNotchedRectangle(),
//     ),
//     buttonTheme: ButtonThemeData(
//       buttonColor: MainColors.get.main,
//       textTheme: ButtonTextTheme.primary,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//     ),
//     bottomAppBarColor: MainColors.get.main,
//     bottomSheetTheme: BottomSheetThemeData(
//       backgroundColor: MainColors.get.main,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(10),
//         ),
//       ),
//     ),
//     brightness: Brightness.light,
//     buttonBarTheme: const ButtonBarThemeData(
//       buttonTextTheme: ButtonTextTheme.primary,
//     ),
//     cardTheme: CardTheme(
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//    progressIndicatorTheme: ProgressIndicatorThemeData(
//      color: AppColors.get.primary,
//
//    ),
//     scaffoldBackgroundColor: Colors.white,
//     cupertinoOverrideTheme:  CupertinoThemeData(
//       brightness: Brightness.dark,
//       primaryColor:AppColors.get.secondary,
//       textTheme: CupertinoTextThemeData(
//         textStyle: TextStyle(color: MainColors.get.main),
//         //   actionTextStyle: TextStyle(color: MainColors.get.main),
//         dateTimePickerTextStyle: TextStyle(color: MainColors.get.main,fontSize: 16.toFS(),),
//
//         //   navActionTextStyle: TextStyle(color: MainColors.get.main),
//         //   primaryColor: Colors.grey,
//
//       ),
//
//     ),
//
//     fontFamily: AppInfoKeys.fontFamily,
//     cardColor: AppColors.get.cardFill,
//
//     listTileTheme: const ListTileThemeData(
//
//     ),
//     textTheme: TextTheme(
//       bodyText2: TextStyle(
//         color: AppColors.get.title,
//       ),
//     ),
//
//   );
//
//   static ThemeData dark = ThemeData.dark().copyWith(
//     platform: (getOS==ios)?TargetPlatform.iOS:TargetPlatform.android,
//
//     androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
//     /// call method later
//     tabBarTheme: TabBarTheme(
//       indicator: BoxDecoration(
//         color: Colors.transparent,
//         border: Border(
//           bottom: BorderSide(
//             color: AppColors.get.primary,
//             width: 2,
//           ),
//         ),
//       ),
//       labelColor: Colors.black,
//       unselectedLabelColor: Colors.grey,
//       labelStyle: TextStyle(
//         fontSize: 11,
//         fontWeight: FontWeight.w600,
//       ),
//       unselectedLabelStyle: TextStyle(
//         fontSize: 11,
//         fontWeight: FontWeight.w600,
//       ),
//     ),
//     appBarTheme: AppBarTheme(
//       color: AppColors.get.appbar,
//       elevation: 0.2,
//       shadowColor: AppColors.get.shadow,
//       titleTextStyle: TextStyle(
//         color: AppColors.get.appbarTitle,
//         fontSize: 22.0.toFS(),
//         fontWeight: FontWeight.w500,
//       ),
//       centerTitle: true,
//       toolbarHeight: kToolbarHeight,
//       toolbarTextStyle: TextStyle(
//         color: AppColors.get.title,
//         fontSize: 17.0.toFS(),
//         fontWeight: FontWeight.w400,
//       ),
//       systemOverlayStyle: const SystemUiOverlayStyle(
//         statusBarBrightness: Brightness.dark,
//         statusBarIconBrightness: Brightness.light,
//         systemStatusBarContrastEnforced: false,
//         statusBarColor: Colors.transparent,
//       ),
//       iconTheme: IconThemeData(color: AppColors.get.icon, size: 14.toRad()),
//       actionsIconTheme:
//       IconThemeData(color: AppColors.get.icon, size: 14.toRad()),
//     ),
//     progressIndicatorTheme: ProgressIndicatorThemeData(
//       color: AppColors.get.primary,
//     ),
//     applyElevationOverlayColor: true,
//     backgroundColor: AppColors.get.background,
//     bannerTheme: MaterialBannerThemeData(
//       backgroundColor: AppColors.get.red,
//       contentTextStyle: const TextStyle(color: Colors.white),
//       leadingPadding: const EdgeInsets.all(8),
//       elevation: 8,
//       padding: const EdgeInsets.all(8),
//     ),
//     bottomNavigationBarTheme:   BottomNavigationBarThemeData(
//       backgroundColor: AppColors.get.background,
//       selectedItemColor:AppColors.get.bnbSelectedItem,
//       selectedLabelStyle: TextStyle(color: AppColors.get.bnbSelectedItem,fontSize: 14.toFS()),
//       unselectedLabelStyle: TextStyle(color: AppColors.get.bnbUnSelectedItem,fontSize: 14.toFS()),
//       unselectedItemColor:AppColors.get.bnbUnSelectedItem,
//       elevation: 20,
//
//       enableFeedback: true,
//       showUnselectedLabels: false,
//       showSelectedLabels: false,
//       type: BottomNavigationBarType.shifting,
//
//     ),
//     bottomAppBarTheme: BottomAppBarTheme(
//       color: MainColors.get.main,
//       elevation: 8,
//       shape: const CircularNotchedRectangle(),
//     ),
//     buttonTheme: ButtonThemeData(
//       buttonColor: MainColors.get.main,
//       textTheme: ButtonTextTheme.primary,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//     ),
//     bottomAppBarColor: MainColors.get.main,
//     bottomSheetTheme: BottomSheetThemeData(
//       backgroundColor: MainColors.get.main,
//       shape: const RoundedRectangleBorder(
//         borderRadius: const BorderRadius.vertical(
//           top: const Radius.circular(10),
//         ),
//       ),
//     ),
//     brightness: Brightness.dark,
//     buttonBarTheme: const ButtonBarThemeData(
//       buttonTextTheme: ButtonTextTheme.primary,
//     ),
//     cardTheme: CardTheme(
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//     scaffoldBackgroundColor: MainColors.get.main,
//     cupertinoOverrideTheme:   CupertinoThemeData(
//       brightness: Brightness.dark,
//       primaryColor: AppColors.get.secondary,
//       textTheme: CupertinoTextThemeData(
//         textStyle: TextStyle(color: MainColors.get.main),
//         //   actionTextStyle: TextStyle(color: MainColors.get.main),
//            dateTimePickerTextStyle: TextStyle(color: MainColors.get.main,fontSize: 16.toFS(),),
//         //   navActionTextStyle: TextStyle(color: MainColors.get.main),
//         //   primaryColor: Colors.grey,
//       ),
//
//     ),
//     cardColor: AppColors.get.cardFill,
//     listTileTheme: const ListTileThemeData(),
//     textTheme: TextTheme(
//       bodyText2: TextStyle(
//         color: AppColors.get.title,
//       ),
//     ),
//   );
// }

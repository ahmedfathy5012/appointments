import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:flutter/material.dart';

abstract class ColorInterface {
  Color get main;
  Color get blueBlack => const Color(0xff1D242D);

  // set main(Color value) {
  //   main = value;
  // }
  //
  // set blueBlack(Color value) {
  //   blueBlack = value;
  // }

  // TODO 6 : Add Basic Colors here !
  Color get primarySwatch => const Color(0xff3F44DC);

  // Color get primary => const Color(0xffE09A00);
  Color get primary => const Color(0xffE09A11);

  Color get primaryDarker => const Color(0xff262262);

  Color get secondary => const Color(0xffF9EBCC);

  Color get divider => const Color(0xffFBFBFB);

  Color get third => const Color(0xff9CA0BC);

  Color get spaceColor => const Color(0xffF7F7F8);

  Color get spaceTextColor => const Color(0xff9498AC);

  Color get answerBackGround => white;
  Color get answerSuccessBackGround => const Color(0xff2F2D51);
  Color get chooseCircle => MainColors.get.main;
  Color get scaffoldBackGroundGrey => const Color(0xffFAFAFA);
  Color get sliderColor => const Color(0xffE8E8E8);

  Color get answerFailedBorder => const Color(0xff9498AC);

  Color get personColor => const Color(0xffC0C8D3);

  Color get lightText => third;

  Color get buttonSecondary => third;

  Color get buttonMain => MainColors.get.main;

  Color get icon;

  Color get switchEnabled => const Color(0xff4CD964);

  Color get offline => const Color(0xff2E297D);

  Color get switchDisabled => const Color(0xffF7F8FA);

  Color get cardBorderLight => const Color(0xffCFCFCF);

  Color get switchBorder => const Color(0xffE5E5E5);

  Color get cardBorder;

  Color get cardDarkBorder => const Color(0xffC9C9C9);

  Color get cardFill;

  Color get buttonText => third;

  Color get black => const Color(0xff151A20);
  Color get lightBlack => const Color(0xff3D4C5E);

  Color get ultraBlack => const Color(0xff292D32);
  Color get subtitle => const Color(0xff546881);

  Color get background;

  Color get tabBar;

  Color get activeBackground;

  Color get orangeLight => const Color(0xffff8216);

  Color get greyUltraLight => const Color(0xffF2F2F2);

  Color get greyLight => const Color(0xffc8c7cc);

  Color get greyBorder => const Color(0xffDFDFDF);

  Color get grey => const Color(0xff666666);

  Color get greyDark => const Color(0xffB2BBC6);

  Color get parentDark => const Color(0xff5E5E5E);
  Color get parentBorder => const Color(0xffD4D4D4);

  Color get greyUltraDark => const Color(0xff535353);

  Color get secondaryColor => const Color(0xffFCF5E5);

  Color get opposite;

  /// for disabled item like buttons
  Color get disabled;

  Color get title;

  Color get subTitle => const Color(0xffACB1C0);

  Color get tFFFill;

  Color get indicatorActive => secondary;

  Color get indicatorInactive => const Color(0xffCCCCCC);

  Color get appbar => MainColors.get.main;

  Color get appbarTitle => primaryDarker;
  Color get appBarColorInner;

  Color get shadow;

  Color get white => Colors.white;

  Color get transparent => Colors.transparent;

  Color get red => const Color(0xffFF2C2C);

  Color get error => red;

  Color get caution => const Color(0xffFF2D55);

  Color get green => const Color(0xff38D826);

  Color get amber => const Color(0xffFFB116);

  Color get orange => const Color(0xffFF9113);

  Color get yellow => const Color(0xffFCD732);

  Color get circleColor => const Color(0xffF7F7F7);

  Color get chipFill => MainColors.get.main;

  Color get chipBorderSecondary => const Color(0xffDFEDFC);

  Color get chipBorder => const Color(0xff101C43);

  Color get userCircleAvatarFill => primary;

  Color get circleAvatarFill => const Color(0xffEFF7FF);

  Color get circleAvatarOverlay => Colors.white.withOpacity(0.5);

  Color get circleAvatarBorder => Colors.white;

  Color get circleAvatarStackedBorder => const Color(0xff3D4CDB);

  Color get blue => const Color(0xff9DDCEC);

  Color get circleBorder => const Color(0xff939393);

  Color get cardSubTitle => const Color(0xffC2C2C2);

  Color get cardBackGroundAccount => const Color(0xffECECEC);

  Color get cardBorderColor => const Color(0xffF9F9F9);

  /// changed to grade // or save as image
  Color get bnbSelectedItem => primary;

  Color get bnbUnSelectedItem => const Color(0xff949494);

  Color get onRefreshIndicator;

//<editor-fold desc="Text Field">
  Color get tTFCursor => const Color(0xff000000);

  Color get tTFFillColor => const Color(0xffF7F7F7);

  Color get tFFInputTitle => const Color(0xff151A20);

  Color get tFFInputBackground => Colors.transparent;

  Color get tTFIsRequired => red;

  Color get tTFPrefixColor => const Color(0xffAEAEAE);

  Color get tTFPrefixText => const Color(0xffFEF1F1);

  Color get tTFErrorBorder => Colors.red;

  Color get tTFErrorText => MainColors.get.main;

  Color get tTFErrorTextBcg => const Color(0xffFEF1F1);

  Color get tFFHintTitle => const Color(0xffD0D0D0);

  Color get tTFHintTextBcg => const Color(0xffFEF1F1);

  Color get tFFHeaderTitle => title;

  Color get tFFHeaderBackground => Colors.transparent;

  Color get tFFLabelTitle => title;

  Color get tFFLabelBackground => const Color(0xffBBBDC1);

  Color get tTFBackGround => const Color(0xffF7F7F7);

  Color get tTFActiveBackGround => const Color(0xFFF5F5F5);

  Color get tTFFocusBorder => MainColors.get.main;

  Color get tTFSuffixIcon => const Color(0xff6F7282);

  Color get tTFEnableBorder => const Color(0xffF0F1F4);

  Color get tTFDisableBorder => const Color(0xffF0F1F4);

  Color get tFFSuffixText => const Color(0xffFEF1F1);

//</editor-fold>
}

//TODO 3 : ALL ASSETS GONNA BE HERE INCLUDING [Lottie],[Images]

import 'package:mobile/src/Base/Core/Constants/Strings/resources/boards.dart';
import 'package:mobile/src/Base/Core/Constants/Strings/resources/illustrations.dart';
import 'package:mobile/src/Base/Core/Constants/Strings/resources/lotties.dart';
import 'package:mobile/src/Base/Core/Constants/Strings/resources/pattenrs.dart';

import '../../Constants/Strings/resources/icons.dart';
import '../../Constants/Strings/resources/parent_icons.dart';
import '../../Constants/Strings/resources/on_boarding_images.dart';
import '../../Constants/Strings/resources/auth_icons.dart';
import '../../Constants/Strings/resources/images.dart';
import '../../Constants/Strings/resources/app_icons.dart';

class Assets {
  Assets._();

  static Icons get icons => Icons.instance;
  static Lotties get lotties => Lotties.instance;
  static Illustrations get illustrations => Illustrations.instance;
  static Patterns get patterns => Patterns.instance;
  static ParentIcons get parentIcons => ParentIcons.instance;
  static OnBoardingImages get onBoardingImages => OnBoardingImages.instance;
  static AuthIcons get authIcons => AuthIcons.instance;
  // static SplashIcons get splashIcons => SplashIcons.instance;
  static AppIcons get appIcons => AppIcons.instance;
  // static Audio get audio => Audio.instance;
  static Images get images => Images.instance;
  static Boards get boards => Boards.instance;
}

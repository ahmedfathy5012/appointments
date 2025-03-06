import 'package:mobile/app_info_keys.dart';
import 'package:mobile/src/Base/Core/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/src/snap_main.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/src/snap_router/route_generator.dart';
import 'package:mobile/src/Base/Core/Styles/Themes/imports_themes.dart';
import 'package:get/get.dart';

import '../Services/Localization/localization_services.dart';


class AppMaterial extends StatelessWidget {
  final Widget home;

  const AppMaterial({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Snap.key,
      scaffoldMessengerKey: Snap.messengerKey,
      onGenerateRoute: RouterGenerator().goRoutes,
      translations: LocalizationServices(),
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      locale: Utils.cachedLocale,
      // locale: LocalizationServices.locale,
      title: AppInfoKeys.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.light,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
      home: home,
    );
  }
}


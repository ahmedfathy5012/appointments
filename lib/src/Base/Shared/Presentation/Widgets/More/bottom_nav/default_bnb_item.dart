import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Spaces&Dividers/spaces.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:flutter/material.dart';

class DefaultBottomNavItem {
  DefaultBottomNavItem._();

  static BottomNavigationBarItem defaultBottomNavItem({
    required String label,
    required String activeIcon,
    required String disActiveIcon,
    // int? notificationCount,
  }) {
    return BottomNavigationBarItem(
      icon: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            children: [
              ImageIcon(
                AssetImage(activeIcon),
                color: AppColors.get.greyDark,
                size: 24.toH(),
                semanticLabel: label,
              ),
              YSpace.light,
              CustomText.subtitle(
                label,
                fontSize: 11,
                fontWeight: FW.semiBold,
                color: AppColors.get.greyDark,
              ),
            ],
          ),
          // if (notificationCount != null && notificationCount != 0)
          //   NotificationCircle(
          //       count: notificationCount,
          //       radius: 8.2.r,
          //       padding: const EdgeInsets.only(bottom: 2.0)),
        ],
      ),
      activeIcon: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            children: [
              ImageIcon(
                AssetImage(disActiveIcon),
                size: 26.toH(),
                // color: MainColors.get.main,
                color: MainColors.get.main,
                semanticLabel: label,
              ),

              YSpace.light,
              CustomText(
                label,
                fontSize: 11,
                fontWeight: FW.semiBold,
                color: MainColors.get.main,
              ),
              // Icon(CupertinoIcons.toH()ome),
            ],
          ),
          // if (notificationCount != null && notificationCount != 0)
          //   NotificationCircle(
          //       count: notificationCount,
          //       radius: 9.2.r,
          //       padding: const EdgeInsets.only(bottom: 2.0)),
        ],
      ),
      label: label,
    );
  }
}

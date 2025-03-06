import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Entities/title_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Choice/Components/choice_multi_circle.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Image/image_network.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class ChoiceMultiRow<T extends TitleInterface> extends StatelessWidget {
  final T item;
  final bool active;
  final VoidCallback onTap;
  final Widget? builder;

  const ChoiceMultiRow({
    super.key,
    required this.item,
    this.active = false,
    required this.onTap,
    this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.toH()),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (item.image != null && (item.image ?? '').isNotEmpty) ...[
                ImageNetwork(
                  url: item.image ?? '',
                  radius: 30,
                ),
                8.ESW(),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomText(
                            item.title,
                            color: AppColors.get.black,
                            fontSize: 16,
                            fontWeight: FW.medium,
                          ),
                        ),
                      ],
                    ),
                    if (item.subTitle != null) ...[
                      8.ESH(),
                      Row(
                        children: [
                          Expanded(
                            child: CustomText(
                              item.subTitle ?? '',
                              color: AppColors.get.black,
                              fontSize: 13,
                              fontWeight: FW.regular,
                            ),
                          ),
                        ],
                      ),
                    ]
                  ],
                ),
              ),
              ChoiceMultiCircle(active: active),
            ],
          ),
        ),
      ),
    );
  }
}

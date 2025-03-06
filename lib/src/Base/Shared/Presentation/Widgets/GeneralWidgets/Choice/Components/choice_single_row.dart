import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Entities/title_interface.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Image/image_network.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'choice_single_circle.dart';

class ChoiceSingleRow<T extends TitleInterface> extends StatelessWidget {
  final T item;
  final bool active;
  final double? titleTextSize;
  final double choiceWidth;
  final double choiceHeight;
  final VoidCallback onTap;

  const ChoiceSingleRow({
    super.key,
    required this.item,
    this.active = false,
    required this.onTap,
    this.titleTextSize = 16,
    this.choiceWidth = 20,
    this.choiceHeight = 20,
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
            children: [
              if(item.image !=null && (item.image??'').isNotEmpty)
              ...[
               ImageNetwork(
                 url: item.image??'',
                 radius: 30,
               ),
                8.ESH(),
              ],
              Expanded(
                child: Column(
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
                    if(item.subTitle!=null)
                    ...[
                      8.ESH(),
                      Row(
                        children: [
                          Expanded(
                            child: CustomText(
                              item.subTitle??'',
                            color: AppColors.get.grey,
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
              ChoiceSingleCircle(
                isActive: active,
                height: choiceHeight,
                width: choiceWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:mobile/src/Base/Core/utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/Builders/title_view_all.dart';

class ViewAllBuilder extends StatelessWidget {
  final Widget child;
  final double bottomPadding;
  final String title;
  final String? viewAllTitle;
  final VoidCallback? onViewAllTap;
  final double spaceBetween;
  final double horizontalPadding;
  const ViewAllBuilder({Key? key,required this.child,this.horizontalPadding=0,this.spaceBetween=16,this.bottomPadding=22,this.onViewAllTap,required this.title,this.viewAllTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleViewAll(title: title,subtitle: viewAllTitle??null,onTap: onViewAllTap??null),
        spaceBetween.ESH(),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: horizontalPadding.toW()),
          // child: Expanded(child: child),
          child: child,
        ),
        bottomPadding.ESH(),
      ],
    );
  }
}

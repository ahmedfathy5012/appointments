import 'package:cached_network_image/cached_network_image.dart';
import 'package:mobile/src/Base/Core/Constants/strings/assets.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
import 'package:mobile/src/Base/Core/utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/Loading/loading.dart';
import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  final String url;
  final double? height;
  final double? radius;
  final double? width;
  final String defaultAvatar;
  final BoxFit boxFit;
  final BorderRadius? borderRadius;
  const ImageNetwork({
    Key? key,
    this.boxFit = BoxFit.cover,
    required this.url,
    this.width,
    this.height,
    this.radius,
    this.defaultAvatar = 'Assets.appIcons.placeholder',
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius ?? height?.toH(),
      width: radius ?? width?.toW(),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        shape: radius != null ? BoxShape.circle : BoxShape.rectangle,
      ),
      child: CachedNetworkImage(
        imageUrl: url,
        fadeInCurve: Curves.easeInBack,
        placeholder: (context, url) => Loading.fadingCircle(),
        fit: boxFit,
        errorWidget: (context, url, error) => Center(
          // child: Image.asset(
          //   defaultAvatar,
          //   fit: boxFit,
          // ),
          child: Container(
            height: radius ?? height?.toH(),
            width: radius ?? width?.toW(),
            color: MainColors.get.main.withOpacity(.3),
            child: Center(
              child: Image.asset(
                Assets.appIcons.icon,
                height: (radius ?? height ?? 50).toH() / 2,
                fit: boxFit,
              ),
            ),
          ),
        ),

        //     Center(
        //   // child: Image.asset(
        //   //   defaultAvatar,
        //   //   fit: boxFit,
        //   // ),
        //   child: Container(
        //     height: radius ?? height?.toH(),
        //     width:  radius ?? width?.toW(),
        //     color: MainColors.get.main,
        //     child: Center(
        //       child: Icon(
        //         Icons.error,
        //         color: AppColors.get.white,
        //       ),
        //     ),
        //   ),
        // ),
        // Center(child: const Icon(Icons.error, color: AppColors.errorColor)),
      ),
    );
  }
}

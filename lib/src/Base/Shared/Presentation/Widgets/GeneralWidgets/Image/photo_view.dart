import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:mobile/src/Base/Core/utils/Extensions/screen_spaces_extension.dart';

class PhotoViewWidget extends StatelessWidget {
  const PhotoViewWidget({
    Key? key,
    required this.imageProvider,
    this.minScale,
    this.maxScale,
  }) : super(key: key);

  final ImageProvider imageProvider;
  final dynamic minScale;
  final dynamic maxScale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      // appBar:AppBars.basic(),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.height,
              ),
              child: PhotoView(
                imageProvider: imageProvider,
                minScale: minScale,
                maxScale: maxScale,
                // heroAttributes: const PhotoViewHeroAttributes(tag: "someTag.Home",),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0.toRad()),
              child: const CloseButton(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

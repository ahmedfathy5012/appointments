// // ignore_for_file: no_leading_underscores_for_local_identifiers
//
// import 'dart:io';
//
// import 'package:image_cropper/image_cropper.dart';
//
// import 'package:mobile/src/Base/Core/Styles/Colors/app_colors.dart';
//
// class ImageCropperService {
//   ImageCropperService._();
//
//   static ImageCropperService get instance => ImageCropperService._();
//   Future<CroppedFile?> cropImage(File image) async {
//     ImageCropper _imageCropper = ImageCropper();
//     CroppedFile? _croppedImage = await _imageCropper.cropImage(
//       sourcePath: image.path,
//       aspectRatioPresets: [
//         CropAspectRatioPreset.square,
//         CropAspectRatioPreset.ratio3x2,
//         CropAspectRatioPreset.original,
//         CropAspectRatioPreset.ratio4x3,
//         CropAspectRatioPreset.ratio16x9
//       ],
//       uiSettings: [
//         AndroidUiSettings(
//           toolbarTitle: 'Crop Image',
//           toolbarColor: AppColors.get.primary,
//           toolbarWidgetColor: AppColors.get.white,
//           initAspectRatio: CropAspectRatioPreset.square,
//           lockAspectRatio: false,
//         ),
//         IOSUiSettings(
//           title: 'Crop Image',
//         ),
//       ],
//       cropStyle: CropStyle.circle,
//     );
//     return _croppedImage;
//   }
// }

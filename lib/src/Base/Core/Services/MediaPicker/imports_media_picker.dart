import 'dart:io';

import 'package:mobile/src/Base/Core/Utils/Extensions/translate_extension.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Shared/Presentation/Widgets/GeneralWidgets/Sheets/app_Sheet.dart';
import '../../../Shared/Presentation/Widgets/GeneralWidgets/Sheets/sheet_indicator.dart';
import '../../../Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import '../../Libraries/snap/snap.dart';
import '../../Styles/Colors/app_colors.dart';

part 'media_picker_service.dart';
part 'sheet_media_picker.dart';
part 'sheet_multi_media_picker.dart';

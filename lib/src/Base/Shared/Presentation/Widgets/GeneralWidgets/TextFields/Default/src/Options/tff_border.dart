part of 'imports_options.dart';

abstract class TffBorders {
  static InputBorder getBorder(
      {required InputDecorationImp inputDecoration, required BorderType type}) {
    switch (type) {
      case BorderType.border:
        BorderSide borderSide = BorderSide(
            color: inputDecoration.borderColor ?? TFFConstants.color.tTFDisableBorder,
            width: (inputDecoration.borderWidth ?? 1).toW()
        );
        return GenericConditionalBuilder<InputBorder>(
          condition: inputDecoration is InputDecorationWithBorder,
          onBuild: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  (inputDecoration.borderRadius??34).toRad()
              ),
              borderSide:borderSide
          ),
          onFeedBack: UnderlineInputBorder(
              borderSide: borderSide
          ),
        ).build;
      case BorderType.disabled:
        BorderSide borderSide = BorderSide(
            color: inputDecoration.disableBorderColor ?? TFFConstants.color.tTFDisableBorder,
            width: (inputDecoration.disableBorderWidth ?? 1).toW()
        );
        return GenericConditionalBuilder<InputBorder>(
          condition: inputDecoration is InputDecorationWithBorder,
          onBuild: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  (inputDecoration.disableBorderRadius??34).toRad()
              ),
              borderSide:borderSide
          ),
          onFeedBack: UnderlineInputBorder(
              borderSide: borderSide
          ),
        ).build;
      case BorderType.enable:
        BorderSide borderSide = BorderSide(
            color: inputDecoration.enableBorderColor ?? TFFConstants.color.tTFEnableBorder,
            width: (inputDecoration.enableBorderWidth ?? 1).toW()
        );
        return GenericConditionalBuilder<InputBorder>(
          condition: inputDecoration is InputDecorationWithBorder,
          onBuild: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  (inputDecoration.enableBorderRadius??34).toRad()
              ),
              borderSide:borderSide
          ),
          onFeedBack: UnderlineInputBorder(
              borderSide: borderSide
          ),
        ).build;
      case BorderType.error:
        BorderSide borderSide = BorderSide(
            color: inputDecoration.errorBorderColor ?? TFFConstants.color.tTFErrorBorder,
            width: (inputDecoration.errorBorderWidth ?? 1).toW()
        );
        return GenericConditionalBuilder<InputBorder>(
          condition: inputDecoration is InputDecorationWithBorder,
          onBuild: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  (inputDecoration.errorBorderRadius??34).toRad()
              ),
              borderSide:borderSide
          ),
          onFeedBack: UnderlineInputBorder(
              borderSide: borderSide
          ),
        ).build;
      case BorderType.focus:
        BorderSide borderSide = BorderSide(
            color: inputDecoration.focusBorderColor ?? TFFConstants.color.tTFFocusBorder,
            width: (inputDecoration.focusBorderWidth ?? 1).toW()
        );
        return GenericConditionalBuilder<InputBorder>(
          condition: inputDecoration is InputDecorationWithBorder,
          onBuild: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  (inputDecoration.focusBorderRadius??34).toRad()
              ),
              borderSide:borderSide
          ),
          onFeedBack: UnderlineInputBorder(
              borderSide: borderSide
          ),
        ).build;
    }
  }

}
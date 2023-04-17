import 'package:flutter/material.dart';

class DeepDarkText extends ThemeExtension<DeepDarkText> {
  final TextStyle textStyle;
  DeepDarkText({
    required this.textStyle,
  });

  @override
  ThemeExtension<DeepDarkText> copyWith({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? style,
    TextStyle? textStyle,
  }) =>
      DeepDarkText(
        textStyle: textStyle ?? this.textStyle,
      );

  @override
  ThemeExtension<DeepDarkText> lerp(ThemeExtension<DeepDarkText>? other, double t) =>
      DeepDarkText(
        textStyle: textStyle,
      );

  TextStyle copy({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? style,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: style,
        color: textStyle.color,
      );
}

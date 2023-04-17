import 'package:flutter/material.dart';

class BlueText extends ThemeExtension<BlueText> {
  final TextStyle textStyle;
  BlueText({
    required this.textStyle,
  });

  @override
  ThemeExtension<BlueText> copyWith({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? style,
    TextStyle? textStyle,
  }) =>
      BlueText(
        textStyle: textStyle ?? this.textStyle,
      );

  @override
  ThemeExtension<BlueText> lerp(ThemeExtension<BlueText>? other, double t) =>
      BlueText(
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

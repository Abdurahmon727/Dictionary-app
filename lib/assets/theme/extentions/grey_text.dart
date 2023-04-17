import 'package:flutter/material.dart';

class GreyText extends ThemeExtension<GreyText> {
  final TextStyle textStyle;
  GreyText({
    required this.textStyle,
  });

  @override
  ThemeExtension<GreyText> copyWith({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? style,
    TextStyle? textStyle,
  }) =>
      GreyText(
        textStyle: textStyle ?? this.textStyle,
      );

  @override
  ThemeExtension<GreyText> lerp(ThemeExtension<GreyText>? other, double t) =>
      GreyText(
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

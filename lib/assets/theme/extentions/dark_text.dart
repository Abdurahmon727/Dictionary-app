import 'package:flutter/material.dart';

class DarkText extends ThemeExtension<DarkText> {
  final TextStyle textStyle;
  DarkText({
    required this.textStyle,
  });

  @override
  ThemeExtension<DarkText> copyWith({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? style,
    TextStyle? textStyle,
  }) =>
      DarkText(
        textStyle: textStyle ?? this.textStyle,
      );

  @override
  ThemeExtension<DarkText> lerp(ThemeExtension<DarkText>? other, double t) =>
      DarkText(
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

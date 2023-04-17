import 'package:flutter/material.dart';

class RedText extends ThemeExtension<RedText> {
  final TextStyle textStyle;
  RedText({
    required this.textStyle,
  });

  @override
  ThemeExtension<RedText> copyWith({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? style,
    TextStyle? textStyle,
  }) =>
      RedText(
        textStyle: textStyle ?? this.textStyle,
      );

  @override
  ThemeExtension<RedText> lerp(ThemeExtension<RedText>? other, double t) =>
      RedText(
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

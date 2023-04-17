import 'package:flutter/material.dart';

class WhiteText extends ThemeExtension<WhiteText> {
  final TextStyle textStyle;
  WhiteText({
    required this.textStyle,
  });

  @override
  ThemeExtension<WhiteText> copyWith({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? style,
    TextStyle? textStyle,
  }) =>
      WhiteText(
        textStyle: textStyle ?? this.textStyle,
      );

  @override
  ThemeExtension<WhiteText> lerp(ThemeExtension<WhiteText>? other, double t) =>
      WhiteText(
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

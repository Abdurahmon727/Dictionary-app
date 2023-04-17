import 'package:flutter/material.dart';

import '../../assets/colors/colors.dart';

class WHighlightedText extends StatelessWidget {
  const WHighlightedText(
      {super.key, required this.text, required this.highlightedText});
  final String text;
  final String highlightedText;

  @override
  Widget build(BuildContext context) {
    if (highlightedText.isEmpty ||
        !text.toLowerCase().contains(highlightedText.toLowerCase())) {
      return RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          style: Theme.of(context).textTheme.headline3!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
          text: text,
        ),
      );
    }
    final matches =
        highlightedText.toLowerCase().allMatches(text.toLowerCase());

    int lastMatchEnd = 0;

    final List<TextSpan> children = [];
    for (var i = 0; i < matches.length; i++) {
      final match = matches.elementAt(i);

      if (match.start != lastMatchEnd) {
        children.add(TextSpan(
          text: text.substring(lastMatchEnd, match.start),
        ));
      }

      children.add(TextSpan(
        text: text.substring(match.start, match.end),
        style: Theme.of(context).textTheme.headline3!.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              backgroundColor: brown,
            ),
      ));

      if (i == matches.length - 1 && match.end != text.length) {
        children.add(TextSpan(
          text: text.substring(match.end, text.length),
        ));
      }

      lastMatchEnd = match.end;
    }
    return RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          style: Theme.of(context).textTheme.headline3!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
          children: children),
    );
  }
}

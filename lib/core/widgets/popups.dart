import 'package:flutter/material.dart';

import '../../assets/colors/colors.dart';

class WPopUp extends StatelessWidget {
  final String text;

  final Color color;
  const WPopUp({
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 4,
            color: black.withOpacity(0.12),
          )
        ],
      ),
      padding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 15, color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

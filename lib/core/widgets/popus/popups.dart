import 'package:flutter/material.dart';

Future<void> showCustomBottomSheet(
  BuildContext context,
  Widget Function(BuildContext bottomSheetContext) builder,
) async {
  showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    backgroundColor: Colors.transparent,
    enableDrag: true,
    isDismissible: true,
    isScrollControlled: true,
    builder: builder,
  );
}

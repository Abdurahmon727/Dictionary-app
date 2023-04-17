import 'package:flutter/material.dart';

void showErrorSnackBar(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
      content: Text(
        message,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
      ),
    ),
  );
}

void showSuccessSnackBar(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
      content: Text(
        message,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
      ),
    ),
  );
}

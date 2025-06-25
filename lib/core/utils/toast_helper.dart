import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastHelper {
  static void showSuccess({
    required BuildContext context,
    required String title,
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    toastification.show(
      context: context,
      type: ToastificationType.success,
      title: Text(title),
      description: Text(message),
      style: ToastificationStyle.minimal,
      autoCloseDuration: duration,
    );
  }

  static void showError({
    required BuildContext context,
    required String title,
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    toastification.show(
      context: context,
      type: ToastificationType.error,
      title: Text(title),
      description: Text(message),
      style: ToastificationStyle.minimal,
      autoCloseDuration: duration,
    );
  }
}

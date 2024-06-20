import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:ewallet/core/resource/resource.dart';

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: alertColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:libras_quiz/utils/app_colors.dart';

class ToastHelper{

  static onMessage({
    required BuildContext context,
    required String message,
    required bool isError,
    final int? timer,
  }) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: timer ?? 3,
        backgroundColor: isError ? Colors.red : Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
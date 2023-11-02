import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:libras_quiz/utils/app_colors.dart';

abstract class LoadingWidget{
  static loading(Color? color, double? size){
    return Center(child: SpinKitThreeBounce(color: color ?? AppColors.primaryColor,size: size ?? 25,));
  }
}
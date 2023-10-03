import 'package:flutter/material.dart';

class AnimatedNavigatorRoute extends PageRouteBuilder {
  final Widget child;
  final int milliseconds;
  final Curve? curve;
  final Alignment? alignment;

  AnimatedNavigatorRoute({
    this.alignment,
    required this.milliseconds,
    required this.child,
    this.curve,
  }) : super(
            transitionDuration: Duration(milliseconds: milliseconds),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation = CurvedAnimation(
                  parent: animation, curve: curve ?? Curves.fastOutSlowIn);

              return ScaleTransition(
                scale: animation,
                alignment: alignment ?? Alignment.bottomCenter,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return child;
            });

  AnimatedNavigatorRoute.fade({
    this.alignment,
    required this.milliseconds,
    required this.child,
    this.curve,
  }) : super(
            transitionDuration: Duration(milliseconds: milliseconds),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation = CurvedAnimation(
                  parent: animation, curve: curve ?? Curves.decelerate);

              return FadeTransition(
                // scale: animation,
                // alignment: alignment ?? Alignment.bottomCenter,
                opacity: animation,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return child;
            });
}

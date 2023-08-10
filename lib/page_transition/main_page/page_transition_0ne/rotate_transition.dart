import 'package:flutter/material.dart';

class PageRotateTransitions extends PageRouteBuilder {
  final dynamic page;
  PageRotateTransitions(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // ignore: no_leading_underscores_for_local_identifiers
              var _aimation = Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                      parent: animation, curve: Curves.bounceInOut));
              return RotationTransition(
                turns: _aimation,
                child: child,
              );
            });
}

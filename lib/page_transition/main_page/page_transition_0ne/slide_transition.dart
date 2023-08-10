import 'package:flutter/material.dart';

class PageSlideTransitions extends PageRouteBuilder {
  final dynamic page;
  PageSlideTransitions(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // ignore: no_leading_underscores_for_local_identifiers
              var _aimation = Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0));
              return SlideTransition(
                position: animation.drive(_aimation),
                child: child,
              );
            });
}

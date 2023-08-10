import 'package:flutter/material.dart';

import 'page_transition_0ne/fade_transition.dart';
import '../page_transition_one.dart';
import 'page_transition_0ne/rotate_transition.dart';
import 'page_transition_0ne/scale_transition.dart';
import 'page_transition_0ne/size_transition.dart';
import 'page_transition_0ne/slide_transition.dart';

class PageTransitionsButtons extends StatefulWidget {
  const PageTransitionsButtons({super.key});

  @override
  State<PageTransitionsButtons> createState() => _PageTransitionsButtons();
}

class _PageTransitionsButtons extends State<PageTransitionsButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Implicit Animation "),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              PageFadeTransitions(const PageTransitionOne())
              );
            },
            child: const Text("Page Fade Transition"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              PageScaleTransitions(const PageTransitionOne())
              );
            },
            child: const Text("Page Scale Transition "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              PageRotateTransitions(const PageTransitionOne())
              );
            },
            child: const Text("Page Rotation Transition "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              PageSlideTransitions(const PageTransitionOne())
              );
            },
            child: const Text("Page Scale Transition "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              PageSizeTransitions(const PageTransitionOne())
              );
            },
            child: const Text("Page Size Transition "),
          ),
        ]),
      ),
    );
  }
}

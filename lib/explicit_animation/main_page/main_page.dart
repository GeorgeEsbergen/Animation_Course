import 'package:animation_project_one/explicit_animation/animated_builder.dart';
import 'package:animation_project_one/explicit_animation/fade_transiton.dart';
import 'package:animation_project_one/explicit_animation/rotation_transition.dart';
import 'package:animation_project_one/explicit_animation/sized_transition.dart';
import 'package:animation_project_one/explicit_animation/text_style_transition.dart';
import 'package:flutter/material.dart';
import '../indexed_stack_transitoin.dart';
import '../positioned_transition.dart';
import '../tween_animation_builder.dart';

class ExplicitAnimationButtons extends StatefulWidget {
  const ExplicitAnimationButtons({super.key});

  @override
  State<ExplicitAnimationButtons> createState() =>
      _ExplicitAnimationButtonsState();
}

class _ExplicitAnimationButtonsState extends State<ExplicitAnimationButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation "),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const PositionedTransitionEx()),
              );
            },
            child: const Text(" Positioned Transition "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const SizedTransitionEx()),
              );
            },
            child: const Text(" Sized Transition "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const RotationTransitionEx()),
              );
            },
            child: const Text(" Rotation Transition "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const AnimatedBuilderEx()),
              );
            },
            child: const Text(" Animated Builder "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const FadeTransitionEx()),
              );
            },
            child: const Text(" Fade Transition "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const TweenAnimationBuilderEx()),
              );
            },
            child: const Text(" Tween Animation Builder "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const TextStyleTransitoinEx()),
              );
            },
            child: const Text(" Text Style Transition  "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const IndexedStackTransitonEx()),
              );
            },
            child: const Text("Indexed Stack Transition "),
          ),
        ]),
      ),
    );
  }
}

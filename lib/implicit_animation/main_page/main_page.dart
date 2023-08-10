import 'package:flutter/material.dart';

import '../animated_align.dart';
import '../animated_container.dart';
import '../animated_cross_fade.dart';
import '../animated_list.dart';
import '../animated_opacity.dart';
import '../animated_padding.dart';
import '../animated_physical.dart';
import '../animated_position_directional.dart';
import '../animated_positioned.dart';
import '../animated_switcher.dart';
import '../animated_textsize.dart';

class ImplicitAnimationButtons extends StatefulWidget {
  const ImplicitAnimationButtons({super.key});

  @override
  State<ImplicitAnimationButtons> createState() => _ImplicitAnimationButtons();
}

class _ImplicitAnimationButtons extends State<ImplicitAnimationButtons> {
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
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AniamtionAlignEx()));
            },
            child: const Text("Animated Align"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AniamtedContainerEx()));
            },
            child: const Text("Animated Container"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedTextStyleEx()));
            },
            child: const Text("Animated Text Style"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedOpacityEx()));
            },
            child: const Text("Animated Opacity"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedPaddingEx()));
            },
            child: const Text("Animated Padding in GridView"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedPhysicalEx()));
            },
            child: const Text("Animated Physical Model"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedpostionEx()));
            },
            child: const Text("Animated Positioned "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const AnimatedPositionalDirectionalEx()));
            },
            child: const Text("Animated Positioned Directional"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedCrossFadeEx()));
            },
            child: const Text("Animated Cross Fade"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedSwitcherEx()));
            },
            child: const Text("Animated Switcher"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedListEx()));
            },
            child: const Text("Animated List"),
          ),
        ]),
      ),
    );
  }
}
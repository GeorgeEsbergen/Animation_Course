import 'package:flutter/material.dart';

class AnimatedCrossFadeEx extends StatefulWidget {
  const AnimatedCrossFadeEx({super.key});

  @override
  State<AnimatedCrossFadeEx> createState() => _AnimatedCrossFadeExState();
}

class _AnimatedCrossFadeExState extends State<AnimatedCrossFadeEx> {
  bool _state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _state = !_state;
            });
          },
          child: AnimatedCrossFade(
            duration: const Duration(milliseconds: 700),
            firstCurve: Curves.easeIn,
            secondCurve: Curves.easeOut,
            crossFadeState:
                _state ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            firstChild: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("assets/spike.png"),
            ),
            secondChild: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("assets/jerry2.png"),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AnimatedPositionalDirectionalEx extends StatefulWidget {
  const AnimatedPositionalDirectionalEx({super.key});

  @override
  State<AnimatedPositionalDirectionalEx> createState() =>
      _AnimatedPositionalDirectionalExState();
}

class _AnimatedPositionalDirectionalExState
    extends State<AnimatedPositionalDirectionalEx> {
  double _start = 0;
  double _top = 0;

  void _moveToRight() {
    _start += 50;
    setState(() {});
    if (_start > MediaQuery.of(context).size.width - 150) {
      _start = MediaQuery.of(context).size.width - 150;
    }
  }

  void _moveToleft() {
    _start -= 50;
    setState(() {});
    if (_start < 0) {
      _start = 0;
    }
  }

  void _moveToTop() {
    _top -= 50;
    setState(() {});
    if (_top < 0) {
      _top = 0;
    }
  }

  void _moveToBottom() {
    _top += 50;
    setState(() {});
    if (_top > MediaQuery.of(context).size.height - 300) {
      _top = MediaQuery.of(context).size.height - 300;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Positioned Directional "),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
                curve: Curves.decelerate,
                start: _start,
                top: _top,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/jerry2.png"),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _moveToleft,
                    child: const Icon(Icons.arrow_circle_left_outlined),
                  ),
                  ElevatedButton(
                    onPressed: _moveToRight,
                    child: const Icon(Icons.arrow_circle_right_outlined),
                  ),
                  ElevatedButton(
                    onPressed: _moveToTop,
                    child: const Icon(Icons.arrow_circle_up_sharp),
                  ),
                  ElevatedButton(
                    onPressed: _moveToBottom,
                    child: const Icon(Icons.arrow_circle_down_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

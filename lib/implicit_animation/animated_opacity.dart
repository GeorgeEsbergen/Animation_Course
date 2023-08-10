import 'package:flutter/material.dart';

class AnimatedOpacityEx extends StatefulWidget {
  const AnimatedOpacityEx({super.key});

  @override
  State<AnimatedOpacityEx> createState() => _AnimatedOpacityEx();
}

class _AnimatedOpacityEx extends State<AnimatedOpacityEx> {
  bool _state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity "),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              curve: Curves.decelerate,
              // ignore: sort_child_properties_last
              child: const Text("Welcome to Animated Opacity"),
              duration: const Duration(seconds: 1),
              opacity: _state ? 1.0 : 0.0,
            ),
            const SizedBox(height: 40),
            AnimatedOpacity(
              curve: Curves.decelerate,
              duration: const Duration(seconds: 2),
              opacity: _state ? 1.0 : 0.0,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/jerry.png"),
              ),
            ),
            const SizedBox(height: 40),
            AnimatedOpacity(
              curve: Curves.decelerate,
              duration: const Duration(seconds: 4),
              opacity: _state ? 1.0 : 0.0,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/tom,.png"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _state = !_state;
          });
        },
        child: Icon(_state ? Icons.visibility : Icons.visibility_off),
      ),
    );
  }
}

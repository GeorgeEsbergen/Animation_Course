import 'package:flutter/material.dart';

class RotationTransitionEx extends StatefulWidget {
  const RotationTransitionEx({super.key});

  @override
  State<RotationTransitionEx> createState() => _RotationTransitionExState();
}

class _RotationTransitionExState extends State<RotationTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool state = true;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    _animation = Tween<double>(end: 7.3, begin: 0).animate(_controller);
    super.initState();
  }

  void _start() {
    _controller.reset();
    _controller.forward();
  }

  void _repeat() {
    _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotation Transition "),
        centerTitle: true,
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.green.shade200,
            child: Image.asset("assets/jerry2.png"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         setState(() {
           
          state ? _start() : _repeat();
           state = !state;
         });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

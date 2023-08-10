import 'package:flutter/material.dart';

class FadeTransitionEx extends StatefulWidget {
  const FadeTransitionEx({super.key});

  @override
  State<FadeTransitionEx> createState() => _FadeTransitionExState();
}

class _FadeTransitionExState extends State<FadeTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool state = true;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
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
        title: const Text("Fade Transition "),
        centerTitle: true,
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
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

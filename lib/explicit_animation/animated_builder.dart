import 'package:flutter/material.dart';
import 'dart:math' show pi;

class AnimatedBuilderEx extends StatefulWidget {
  const AnimatedBuilderEx({super.key});

  @override
  State<AnimatedBuilderEx> createState() => _AnimatedBuilderExState();
}

class _AnimatedBuilderExState extends State<AnimatedBuilderEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat(reverse: true);
    super.initState();
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
        title: const Text("Animated Builder "),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, Widget? child){
            return Transform.rotate(angle: _controller.value * 2 * pi,
           child:  Container(
            height: 200,
            width: 200,
            color: Colors.green.shade200,
            child: Image.asset("assets/jerry2.png"),
            ));
          }
              
          
        )
      ),
    );
  }
}

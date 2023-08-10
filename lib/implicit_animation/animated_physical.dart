import 'package:flutter/material.dart';

class AnimatedPhysicalEx extends StatefulWidget {
  const AnimatedPhysicalEx({super.key});

  @override
  State<AnimatedPhysicalEx> createState() => _AnimatedPhysicalExState();
}

class _AnimatedPhysicalExState extends State<AnimatedPhysicalEx> {
  bool _state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Physical Model"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _state = !_state;
            });
          },
          child: AnimatedPhysicalModel(
            curve: Curves.linear,
            duration: const Duration(milliseconds: 300),
            color: Colors.purple.withOpacity(0.7),
            elevation: _state ? 40 : 0.0,
            shadowColor: Colors.grey,
            shape: BoxShape.rectangle,
            child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("assets/jerry.png")),
          ),
        ),
      ),
    );
  }
}

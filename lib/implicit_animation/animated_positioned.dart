import 'package:flutter/material.dart';

class AnimatedpostionEx extends StatefulWidget {
  const AnimatedpostionEx({super.key});

  @override
  State<AnimatedpostionEx> createState() => _AnimatedpostionExState();
}

class _AnimatedpostionExState extends State<AnimatedpostionEx> {
  bool _state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Positioned "),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            AnimatedPositioned(
                left: 0,
                top: 0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset("assets/meat.png"),
                )),
            AnimatedPositioned(
                curve: Curves.decelerate,
                left: _state ? MediaQuery.of(context).size.width - 150 : 0,
                top: 0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.asset("assets/jerry2.png"),
                )),
            AnimatedPositioned(
                curve: Curves.easeIn,
                left: _state ? MediaQuery.of(context).size.width - 150 : 0,
                top: _state ? MediaQuery.of(context).size.width - 100 : 0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  height: 130,
                  width: 130,
                  child: Image.asset("assets/tom2.png"),
                )),
            AnimatedPositioned(
                curve: Curves.easeInCubic,
                left: 0,
                top: _state ? MediaQuery.of(context).size.width : 0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/spike.png"),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _state = !_state;
          });
        },
        child: Icon(
            _state ? Icons.food_bank_outlined : Icons.stop_circle_outlined),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SizedTransitionEx extends StatefulWidget {
  const SizedTransitionEx({super.key});

  @override
  State<SizedTransitionEx> createState() => _SizedTransitionExState();
}

class _SizedTransitionExState extends State<SizedTransitionEx>
    with SingleTickerProviderStateMixin {
  // ignore: unused_field
  late Animation<double> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _animation = Tween<double>(
      end: 1,
      begin: 0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    super.initState();
  }

  void _start() {
    _controller.reset();
    _controller.forward();
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
        title: const Text("Sized Transition"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
            onTap: _start,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
              child: Center(
                child: SizeTransition(
                  sizeFactor: _controller,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                    child: Image.asset("assets/spike.png"),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

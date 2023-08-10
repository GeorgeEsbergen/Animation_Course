import 'package:flutter/material.dart';

class TextStyleTransitoinEx extends StatefulWidget {
  const TextStyleTransitoinEx({super.key});

  @override
  State<TextStyleTransitoinEx> createState() => _TextStyleTransitoinExState();
}

class _TextStyleTransitoinExState extends State<TextStyleTransitoinEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 1) );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);
    super.initState();
  }

  final TextStyle _style1 = const TextStyle(color: Colors.grey, fontSize: 18);
  final TextStyle _style2 = const TextStyle(
      color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold);

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Style Transition"),
        centerTitle: true,
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          
          style: _animation.drive(TextStyleTween(begin: _style1, end: _style2)),
          
          child:  const Text("Welcome to Us "),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.status==AnimationStatus.completed) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
   @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

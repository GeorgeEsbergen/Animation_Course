import 'package:flutter/material.dart';

class IndexedStackTransitonEx extends StatefulWidget {
  const IndexedStackTransitonEx({super.key});

  @override
  State<IndexedStackTransitonEx> createState() =>
      _IndexedStackTransitonExState();
}

class _IndexedStackTransitonExState extends State<IndexedStackTransitonEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAniamtion;
  late Animation<double> _scaleAniamtion;
  int _currentIndex = 0;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _opacityAniamtion = Tween<double>(begin: 0, end: 1).animate(_controller);
    _scaleAniamtion = Tween<double>(begin: 0.2, end: 1).animate(_controller);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _nextScreen() {
    _currentIndex++;
    if (_currentIndex == 3) {
      _currentIndex = 0;
    }
    setState(() {
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indexed Stack Transition"),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ScaleTransition(
            scale: _scaleAniamtion,
            child: FadeTransition(
              opacity: _opacityAniamtion,
              child: Container(
                alignment: Alignment.center,
                color: Colors.green,
                child: Image.asset("assets/tom2.png"),
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAniamtion,
            child: FadeTransition(
              opacity: _opacityAniamtion,
              child: Container(
                alignment: Alignment.center,
                color: Colors.deepPurple,
                child: Image.asset("assets/jerry2.png"),
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAniamtion,
            child: FadeTransition(
              opacity: _opacityAniamtion,
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey,
                child: Image.asset("assets/spike.png"),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _nextScreen,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AnimatedTextStyleEx extends StatefulWidget {
  const AnimatedTextStyleEx({super.key});

  @override
  State<AnimatedTextStyleEx> createState() => _AnimatedTextStyleExState();
}

class _AnimatedTextStyleExState extends State<AnimatedTextStyleEx> {
  Color _color = Colors.black;
  double _fontSize = 15;

  void onPlus() {
    setState(() {
      _color = Colors.green;
      _fontSize = 20;
    });
  }

  void onMinus() {
    setState(() {
      _color = Colors.black;
      _fontSize = 15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text Style"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              curve: Curves.easeInCirc,
              // ignore: sort_child_properties_last
              child: const Text("Welcome to Animation Course"),
              style: TextStyle(fontSize: _fontSize, color: _color),
              duration: const Duration(milliseconds: 400)),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: onPlus,
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: onMinus,
                icon: const Icon(Icons.minimize),
                alignment: Alignment.topCenter,
              )
            ],
          )
        ],
      )),
    );
  }
}

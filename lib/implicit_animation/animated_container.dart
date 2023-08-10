import 'package:flutter/material.dart';

class AniamtedContainerEx extends StatefulWidget {
  const AniamtedContainerEx({super.key});

  @override
  State<AniamtedContainerEx> createState() => _AniamtedContainerExState();
}

class _AniamtedContainerExState extends State<AniamtedContainerEx> {
  double _radius = 20;
  Color _color = Colors.green.withOpacity(0.5);
  double width = 100;
  double height = 100;
  void onClickContainer() {
    setState(() {
      _radius = 60;
      _color = Colors.deepPurple.withOpacity(0.5);
      width = 300;
      height = 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => onClickContainer(),
          child: AnimatedContainer(
            curve: Curves.linear,
            width: width,
            height: height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_radius), color: _color),
            duration: const Duration(milliseconds: 300),
            child: Image.asset("assets/jerry.png"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _radius = 20;
          _color = Colors.green.withOpacity(0.5);
          width = 100;
          height = 100;
          setState(() {});
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}

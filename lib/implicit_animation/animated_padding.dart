import 'package:flutter/material.dart';

class AnimatedPaddingEx extends StatefulWidget {
  const AnimatedPaddingEx({super.key});

  @override
  State<AnimatedPaddingEx> createState() => _AnimatedPaddingExState();
}

class _AnimatedPaddingExState extends State<AnimatedPaddingEx> {
  double _paddingValue = 10;
  bool isExpanded = true;
  List<String> items = [
    "assets/tom,.png",
    "assets/jerry.png",
    "assets/jerry.png",
    "assets/tom,.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding GridView "),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              items.length,
              (index) => AnimatedPadding(
                    padding: EdgeInsets.all(_paddingValue),
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.linear,
                    child: Container(
                      color: Colors.purple.withOpacity(0.15),
                      height: 100,
                      width: 100,
                      child: Image.asset(items[index]),
                    ),
                  )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isExpanded = !isExpanded;
            _paddingValue = isExpanded ? 30 : 10;
          });
        },
        child: Icon(isExpanded ? Icons.visibility : Icons.visibility_off),
      ),
    );
  }
}

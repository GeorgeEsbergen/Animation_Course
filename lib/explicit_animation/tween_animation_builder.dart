import 'package:flutter/material.dart';

class TweenAnimationBuilderEx extends StatefulWidget {
  const TweenAnimationBuilderEx({super.key});

  @override
  State<TweenAnimationBuilderEx> createState() =>
      _TweenAnimationBuilderExState();
}

class _TweenAnimationBuilderExState extends State<TweenAnimationBuilderEx> {
  double _valueOpacity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Tween Animation Builder"),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TweenAnimationBuilder(
                curve: Curves.linear,
                tween: Tween<double>(begin: 0, end: _valueOpacity),
                duration: const Duration(seconds: 2),
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(
                              _valueOpacity * value * 75)),
                      height: 200,
                      width: 200,
                    ),
                  );
                }),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _valueOpacity = _valueOpacity == 0 ? 1 : 0;
                  });
                },
                child: const Text("Animate!!"))
          ]),
        ),
      ),
    );
  }
}

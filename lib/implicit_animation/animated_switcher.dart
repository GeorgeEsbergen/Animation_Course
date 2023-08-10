import 'package:flutter/material.dart';

class AnimatedSwitcherEx extends StatefulWidget {
  const AnimatedSwitcherEx({super.key});

  @override
  State<AnimatedSwitcherEx> createState() => _AnimatedSwitcherExState();
}

class _AnimatedSwitcherExState extends State<AnimatedSwitcherEx> {
  bool _state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        centerTitle: true,
      ),
      body: Center(
          child: AnimatedSwitcher(
              switchInCurve: Curves.decelerate,
              switchOutCurve: Curves.easeInOut,
              duration: const Duration(milliseconds: 300),
              child: _state
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _state = !_state;
                        });
                      },
                      child: const Text("Loading.."),
                    )
                  : const CircularProgressIndicator())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _state = !_state;
          });
        },
        child:
            Icon(_state ? Icons.switch_account : Icons.switch_account_outlined),
      ),
    );
  }
}

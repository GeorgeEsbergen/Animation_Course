import 'package:flutter/material.dart';

class PositionedTransitionEx extends StatefulWidget {
  const PositionedTransitionEx({super.key});

  @override
  State<PositionedTransitionEx> createState() => _PositionedTransitionExState();
}

class _PositionedTransitionExState extends State<PositionedTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _jerryAnimation;
  late Animation<RelativeRect> _tomAnimation;
  late Animation<RelativeRect> _spikeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));

    _jerryAnimation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(170, 170, 0, 0))
        .animate(_controller);

    _tomAnimation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(100, 100, 0, 0))
        .animate(_controller);

    _spikeAnimation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(25, 25, 0, 0))
        .animate(_controller);
  }

  void _start() {
    _controller.reset();
    _controller.forward();
  }

  void _end() {
    _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("Positioned Transitioned")),
      body: Stack(
        children: [
          PositionedTransition(
            rect: _spikeAnimation,
            child: Container(
              color: Colors.grey,
              height: 100,
              width: 100,
              child: Image.asset("assets/spike.png"),
            ),
          ),
          PositionedTransition(
            rect: _tomAnimation,
            child: Container(
              color: Colors.blueGrey,
              height: 100,
              width: 100,
              child: Image.asset("assets/tom2.png"),
            ),
          ),
          PositionedTransition(
            rect: _jerryAnimation,
            child: Container(
              color: Colors.green,
              height: 100,
              width: 100,
              child: Image.asset("assets/jerry2.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _start,
                  child: const Icon(Icons.play_arrow),
                ),
                ElevatedButton(
                  onPressed: _end,
                  child: const Icon(Icons.stop),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

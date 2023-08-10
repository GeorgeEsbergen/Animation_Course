import 'package:flutter/material.dart';

class AniamtionAlignEx extends StatefulWidget {
  const AniamtionAlignEx({super.key});

  @override
  State<AniamtionAlignEx> createState() => _AniamtionAlignExState();
}

class _AniamtionAlignExState extends State<AniamtionAlignEx> {
  int animationInt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Align"),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            children: [
              AnimatedAlign(
                alignment: animated(animationInt + 1),
                duration: const Duration(milliseconds: 300),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/jerry.png"),
                ),
              ),
              AnimatedAlign(
                alignment: animated(animationInt),
                duration: const Duration(milliseconds: 300),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/tom,.png"),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            animationInt = animationInt + 1;

            setState(() {});
            // ignore: avoid_print
            print(animationInt);
          },
          child: const Icon(Icons.animation),
        ));
  }

  Alignment animated(int n) {
    switch (n) {
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        animationInt = 0;
        return Alignment.topLeft;
    }

    
  }
}

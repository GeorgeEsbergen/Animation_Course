import 'package:animation_project_one/more_animation/custom_paint.dart';
import 'package:animation_project_one/more_animation/rive_slider.dart';
import 'package:flutter/material.dart';

import '../lottie_slider.dart';



class MoreAnimationsButtons extends StatefulWidget {
  const MoreAnimationsButtons({super.key});

  @override
  State<MoreAnimationsButtons> createState() => _MoreAnimationsButtons();
}

class _MoreAnimationsButtons extends State<MoreAnimationsButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Implicit Animation "),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(children: [
       
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>const CustomPaintEx())
              );
            },
            child: const Text("Custom Paint  "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>const LottieSliderEx())
              );
            },
            child: const Text("Lottie Slider "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>const RiveSliderEx())
              );
            },
            child: const Text("Rive Slider "),
          ),
        ]),
      ),
    );
  }
}

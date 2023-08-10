import 'package:flutter/material.dart';

import 'package:rive/rive.dart';

class RiveSliderEx extends StatefulWidget {
  const RiveSliderEx({super.key});

  @override
  State<RiveSliderEx> createState() => _RiveSliderExState();
}

class _RiveSliderExState extends State<RiveSliderEx> {
  @override
  void initState() {
    _startAimation();
    super.initState();
  }

  @override
  void dispose() {
    _stopAimation();
    super.dispose();
  }

  void _startAimation() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      if (currentPage == _pageController.length - 1) {
        _controller.animateToPage(0,
            duration: const Duration(milliseconds: 500), curve: Curves.linear);
      } else {
        _controller.nextPage(
            duration: const Duration(milliseconds: 500), curve: Curves.linear);
      }
      _startAimation();
    });
  }

  void _stopAimation() {}

  final List<String> _pageController = [
    "assets/rive/girl.riv",
    "assets/rive/rating.riv",
    "assets/rive/bear.riv",
  ];
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rive Slider "),
        centerTitle: true,
      ),
      body: PageView.builder(
          controller: _controller,
          itemCount: _pageController.length,
          onPageChanged: (int val) {
            setState(() {
              currentPage = val;
            });
          },
          itemBuilder: (context, index) {
            return Center(
              child:RiveAnimation.asset(_pageController[index],
                  ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int page) {
          _controller.animateToPage(page,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: "Animation 1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.animation_sharp), label: "Animation 2"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.animation_outlined,
              ),
              label: "Animation 3"),
        ],
      ),
    );
  }
}

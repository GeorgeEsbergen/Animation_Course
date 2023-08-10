import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSliderEx extends StatefulWidget {
  const LottieSliderEx({super.key});

  @override
  State<LottieSliderEx> createState() => _LottieSliderExState();
}

class _LottieSliderExState extends State<LottieSliderEx> {
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
      if (currentPage == _pageController.length-1) {
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
    "assets/lottie/bird.json",
    "assets/lottie/car.json",
    "assets/lottie/tigger.json"
  ];
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Slider "),
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
              child: Lottie.asset(_pageController[index],
                  repeat: true, reverse: false),
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

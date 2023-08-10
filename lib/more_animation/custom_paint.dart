import 'package:flutter/material.dart';

class CustomPaintEx extends StatefulWidget {
  const CustomPaintEx({super.key});

  @override
  State<CustomPaintEx> createState() => _CustomPaintExState();
}

class _CustomPaintExState extends State<CustomPaintEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animationSize;
  late Animation<Color?> animationColor;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animationSize = Tween<double>(begin: 50, end: 150).animate(_controller);
    animationColor = ColorTween(begin: Colors.red, end: Colors.blueAccent)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Paint "),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return CustomPaint(
              painter: CirclePainter(
                  animationSize.value, animationColor.value ?? Colors.red),
              size: const Size.fromWidth(150),
            );
          },
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final double _size;
  final Color _color;

  CirclePainter(this._size, this._color);

  @override
  void paint(Canvas canvas, Size size) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _paint = Paint();
    _paint.color = _color;
    _paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), _size, _paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return (_size != oldDelegate._size || _color != oldDelegate._color);
  }
}

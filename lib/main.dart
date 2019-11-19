import 'package:flutter/material.dart';

void main() => runApp(AnimatedDots());

class AnimatedDots extends StatefulWidget {
  @override
  _AnimatedDotsState createState() => _AnimatedDotsState();
}

class _AnimatedDotsState extends State<AnimatedDots> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class CustomCurve extends Curve {
  @override
  double transformInternal(double t) {

    if (t >= 0 && t <= 0.2) {
      return 0;
    }
    else if (t > 0.2 && t < 0.4) {
      return Curves.ease.transform((t * 5) - 1);
    }
    else if (t == 0.4) {
      return 1.0;

    }
    else if (t > 0.4 && t < 0.6) {
      return Curves.decelerate.transform(t);
    }

    else if (t >= 0.6) {
      return 0;
    }
  }
}
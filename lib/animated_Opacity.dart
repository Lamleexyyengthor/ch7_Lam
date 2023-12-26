import 'package:flutter/material.dart';

class Animated_Opacity extends StatefulWidget {
  const Animated_Opacity({super.key});

  @override
  State<Animated_Opacity> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Animated_Opacity> {
  double _opacity = 1.0;
  void _animatedOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.3 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: _opacity,
          child: Container(
            color: Colors.amber,
            height: 100.0,
            width: 100.0,
            child: TextButton(
              child: Text('Tap to\nFade'),
              onPressed: () {
                _animatedOpacity();
              },
            ),
          ),
        ),
      ],
    );
  }
}

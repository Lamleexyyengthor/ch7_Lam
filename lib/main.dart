import 'package:flutter/material.dart';
import 'package:ch7_lam/animated_container.dart';
import 'package:ch7_lam/animated_cross_fade.dart';
import 'package:ch7_lam/animated_Opacity.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const AnimatedContainerWidget(),
                Divider(),
                const AnimatedCrossFadeWidget(),
                Divider(),
                const Animated_Opacity(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

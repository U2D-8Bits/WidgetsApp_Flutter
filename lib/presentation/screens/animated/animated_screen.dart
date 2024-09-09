import 'package:flutter/material.dart';


class AnimatedScreen extends StatelessWidget {

  static const String name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animaciones'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Animaciones'),
          ],
        ),
      ),
    );
  }
}
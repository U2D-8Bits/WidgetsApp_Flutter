import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedScreen extends StatefulWidget {

  static const String name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {


  double width = 50;
  double height = 50;
  Color color = Colors.blue;
  double borderRadius = 10.0;


  void changeShade(){

    final random = Random();


    width = random.nextInt(300).toDouble() + 50;
    height = random.nextInt(300).toDouble() + 50;
    color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    borderRadius = random.nextInt(100).toDouble();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: colors.primary,
          ),
        ),
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration( milliseconds: 400 ),
          curve: Curves.easeInCubic,
          width: width <= 0 ? 50 : width,
          height: height <= 0 ? 50 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius <= 0 ? 10 : borderRadius),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShade,
        child: const Icon( Icons.play_arrow_outlined ),
      ),
    );
  }
}
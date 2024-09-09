import 'package:flutter/material.dart';


class InfiniteScrollScreen extends StatelessWidget {
  
  static const String name = 'infinite_scroll';
  
  const InfiniteScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scroll'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Infinite Scroll'),
          ],
        ),
      ),
    );
  }
}
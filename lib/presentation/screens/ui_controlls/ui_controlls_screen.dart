import 'package:flutter/material.dart';

class UIControllsScreen extends StatelessWidget {

  static const String name = 'ui_controlls';

  const UIControllsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controles UI'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Controles UI'),
          ],
        ),
      ),
    );
  }
}
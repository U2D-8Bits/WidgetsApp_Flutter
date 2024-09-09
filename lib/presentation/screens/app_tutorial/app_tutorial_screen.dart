import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {
  
  static const String name = 'app_tutorial';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial de la aplicación'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Tutorial de la aplicación'),
          ],
        ),
      ),
    );
  }
}
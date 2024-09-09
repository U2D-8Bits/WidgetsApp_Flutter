import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {
  
  static const String name = 'app_tutorial';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: colors.primary,
          ),
        ),
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
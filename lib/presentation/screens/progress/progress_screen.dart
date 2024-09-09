import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  
  static const String name = 'progress_screen';
  
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indicadores de progreso'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Indicadores de progreso'),
          ],
        ),
      ),
    );
  }
}
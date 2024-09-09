import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const String name = 'snackbar';
  
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Snackbar'),
          ],
        ),
      ),
    );
  }
}
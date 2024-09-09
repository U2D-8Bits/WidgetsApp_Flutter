import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const String name = 'snackbar';
  
  const SnackbarScreen({super.key});

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
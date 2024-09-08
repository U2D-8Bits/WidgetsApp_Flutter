import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: colors.primary,),
        ),
        title: const Text('Botones'),
      ),
      body: const Placeholder()
    );
  }
}
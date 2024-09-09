import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {
  static const String name = 'infinite_scroll';

  const InfiniteScrollScreen({super.key});

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

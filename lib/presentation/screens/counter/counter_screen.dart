import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetapp/presentation/providers/counter_provider.dart';
import 'package:widgetapp/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  static const String name = 'counter';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final colors = Theme.of(context).colorScheme;
    final int clickCounter = ref.watch(counterProvider);
    final bool darkMode = ref.watch(isDarkMode);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: colors.primary,
          ),
        ),
        title: const Text('Riverpod Counter'),
        actions: [
          IconButton(
            icon: Icon( darkMode? Icons.light_mode_outlined : Icons.dark_mode_outlined),
            onPressed: (){
              ref.read(isDarkMode.notifier).state = !darkMode;
            },
          ),
        ],
      ),
      body: Center(
        child: Text('valor: $clickCounter', style: Theme.of(context).textTheme.titleLarge ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),  
      ),

    );
  }
}
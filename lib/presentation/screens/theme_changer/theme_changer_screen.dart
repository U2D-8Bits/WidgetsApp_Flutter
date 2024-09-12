import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const String name = 'Theme_Changer';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final darkMode = ref.watch(isDarkMode);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon: Icon( darkMode? Icons.light_mode_outlined : Icons.dark_mode_outlined),
            onPressed: (){
              ref.read(isDarkMode.notifier).state = !darkMode;
            },
          ),
        ],
      ),
      body: const _ThemeChangerView()
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final List<Color> colorList = ref.watch(colorListProvider);
    final int selectedIndex = ref.watch(selectedIndexColorProvider);
    final bool darkMode = ref.watch(isDarkMode);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: ( context, index){
          
          final Color color = colorList[index];
          return RadioListTile(
            title: Text( 'Este color', style: TextStyle( color: color),),
            subtitle: Text('${ color.value }'),
            activeColor: color,
            value: index, 
            groupValue: selectedIndex, 
            onChanged: (value) {
              // todo: notificar el cambio a algun lugar
              ref.read(selectedIndexColorProvider.notifier).state = index;
            },
          );
      
        },
      ),
    );
  }
}
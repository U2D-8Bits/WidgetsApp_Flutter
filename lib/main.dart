import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/config/router/app_router.dart';
import 'package:widgetapp/config/theme/app_theme.dart';
import 'package:widgetapp/presentation/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(child: MainApp()),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bool darkMode = ref.watch(isDarkMode);
    final int selectedColor = ref.watch(selectedIndexColorProvider);

    return MaterialApp.router(
      title: 'WidgetApp',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor, isDarkMode: darkMode ).getTheme(),
    );
  }
}

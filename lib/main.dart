import 'package:flutter/material.dart';
import 'package:widgetapp/config/router/app_router.dart';
import 'package:widgetapp/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WidgetApp',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 0 ).getTheme(),
    );
  }
}

import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subtitle,
      required this.url,
      required this.icon});
}

const appMenuItem = <MenuItems>{
  MenuItems(
      title: 'Botones',
      subtitle: 'Widgets de Botones',
      url: '/buttons',
      icon: Icons.add_circle_outline_outlined),
  MenuItems(
      title: 'Tarjetas',
      subtitle: 'Widgets de Tarjetas',
      url: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'Animaciones',
      subtitle: 'Widgets de Animaciones',
      url: '/animated',
      icon: Icons.animation),
  MenuItems(
      title: 'Controles UI',
      subtitle: 'Widgets de Controles UI',
      url: '/ui_controlls',
      icon: Icons.settings),
  MenuItems(
      title: 'Infinite Scroll',
      subtitle: 'Widgets de Infinite Scroll',
      url: '/infinite_scroll',
      icon: Icons.arrow_downward),
  MenuItems(
      title: 'Progress Indicators',
      subtitle: 'Widgets de Progress Indicators',
      url: '/progress_indicators',
      icon: Icons.download),
  MenuItems(
      title: 'SnackBars',
      subtitle: 'Widgets de SnackBars',
      url: '/snackbars',
      icon: Icons.message),
  MenuItems(
      title: 'App Tutorial',
      subtitle: 'Widgets de App Tutorial',
      url: '/app_tutorial',
      icon: Icons.tour),
};

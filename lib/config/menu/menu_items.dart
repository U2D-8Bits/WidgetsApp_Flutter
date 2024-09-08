
import 'package:flutter/material.dart';

class MenuItems{

  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.icon
  });

}

const appMenuItem = <MenuItems>{

  MenuItems(
    title: 'Botones',
    subtitle: 'Widgets de Botones',
    url: '/',
    icon: Icons.add_circle_outline_outlined
  ),

  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Widgets de Tarjetas',
    url: '/cards',
    icon: Icons.credit_card
  ),

};
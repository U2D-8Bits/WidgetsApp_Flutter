
import 'package:flutter/material.dart';

class MenuItems{

  final String title;
  final String subtitle;
  final String url;
  final Icon icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.icon
  });

}

const appMenuItem = <MenuItems> {

  MenuItems(
    title: 'Botones',
    subtitle: 'Widgets de Botones',
    url: '/',
    icon: Icon(Icons.ac_unit)
  ),

  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Widgets de Tarjetas',
    url: '/cards',
    icon: Icon(Icons.access_alarm)
  ),

};
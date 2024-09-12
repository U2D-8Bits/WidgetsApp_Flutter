

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/config/theme/app_theme.dart';

final isDarkMode = StateProvider<bool>( (ref) => false);

//  Listado de colores inmutables
final colorListProvider = StateProvider( (ref) => colorList );


final selectedIndexColorProvider = StateProvider<int>( (ref) => 0 );
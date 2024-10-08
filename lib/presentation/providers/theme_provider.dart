

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetapp/config/theme/app_theme.dart';

final isDarkMode = StateProvider<bool>( (ref) => false);

//  Listado de colores inmutables
final colorListProvider = StateProvider( (ref) => colorList );

final selectedIndexColorProvider = StateProvider<int>( (ref) => 0 );

final themeNotifierProvider = StateNotifierProvider< ThemeNotifier, AppTheme >( (ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  
  ThemeNotifier(  ) : super( AppTheme() );


  void toggleDarkMode(){
    state = state.copyWith( isDarkMode: !state.isDarkMode );
  }

  void changeColor( int index ){
    state = state.copyWith( selectedColor: index );
  }

}
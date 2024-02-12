import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

ThemeData getTheme({darkMode = false}) {
  final colorTheme = darkMode ? darkColorScheme : lightColorScheme;
  return ThemeData(
      colorScheme: colorTheme,
      useMaterial3: true,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorTheme.primary,
        backgroundColor: colorTheme.primaryContainer,
        unselectedItemColor: colorTheme.secondary,
      ),
    appBarTheme: AppBarTheme(
      backgroundColor: colorTheme.surface,
    ),
  );
}

import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

ThemeData getTheme({darkMode = false}) => ThemeData(
      colorScheme: darkMode ? darkColorScheme : lightColorScheme,
      useMaterial3: true,
    );

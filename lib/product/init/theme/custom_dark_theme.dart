import 'package:architecture_template_v2/product/init/theme/custom_color_scheme.dart';
import 'package:flutter/material.dart';

final class CustomDarkTheme {
  final ThemeData themeData = ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorScheme.darkColorScheme,
  );
}

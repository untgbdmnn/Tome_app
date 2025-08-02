import 'package:flutter/material.dart';
import 'package:tome_app/cores/colors.dart';

/// Defines the light theme for the application.
ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorLight.primary,
    colorScheme: ColorScheme.light(
      primary: ColorLight.primary,
      secondary: ColorLight.secondary,
      surface: ColorLight.surface,
      onSurface: ColorLight.fontTitle,
      error: ColorLight.error,
    ),
    scaffoldBackgroundColor: ColorLight.surface,
    cardColor: ColorLight.card,
    dividerColor: ColorLight.divider,
    textTheme: TextTheme(
      displayLarge: TextStyle(color: ColorLight.fontTitle),
      displayMedium: TextStyle(color: ColorLight.fontTitle),
      displaySmall: TextStyle(color: ColorLight.fontTitle),
      headlineLarge: TextStyle(color: ColorLight.fontTitle),
      headlineMedium: TextStyle(color: ColorLight.fontTitle),
      headlineSmall: TextStyle(color: ColorLight.fontTitle),
      titleLarge: TextStyle(color: ColorLight.fontTitle),
      titleMedium: TextStyle(color: ColorLight.fontSubtitle),
      titleSmall: TextStyle(color: ColorLight.fontSubtitle),
      bodyLarge: TextStyle(color: ColorLight.fontTitle),
      bodyMedium: TextStyle(color: ColorLight.fontSubtitle),
      bodySmall: TextStyle(color: ColorLight.fontSubtitle),
      labelLarge: TextStyle(color: ColorLight.fontTitle),
      labelMedium: TextStyle(color: ColorLight.fontSubtitle),
      labelSmall: TextStyle(color: ColorLight.fontSubtitle),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorLight.primary,
        disabledBackgroundColor: ColorLight.disabledButton,
        disabledForegroundColor: ColorLight.fontDisable,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorLight.primary,
      foregroundColor: ColorDark.surface,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorLight.secondary,
      labelStyle: TextStyle(color: ColorLight.fontSubtitle),
      hintStyle: TextStyle(color: ColorLight.fontDisable),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.625 * 16),
        borderSide: BorderSide(color: ColorLight.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.625 * 16),
        borderSide: BorderSide(color: ColorLight.primary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.625 * 16),
        borderSide: BorderSide(color: ColorLight.primary),
      ),
    ),
    toggleButtonsTheme: ToggleButtonsThemeData(
      selectedColor: ColorLight.secondary,
      color: ColorLight.fontTitle,
      fillColor: ColorLight.primary,
    ),
  );
}

/// Defines the dark theme for the application.
ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: ColorDark.primary,
    colorScheme: ColorScheme.dark(
      primary: ColorDark.primary,
      secondary: ColorDark.secondary,
      surface: ColorDark.surface,
      onSurface: ColorDark.fontTitle,
      error: ColorDark.error,
    ),
    scaffoldBackgroundColor: ColorDark.surface,
    cardColor: ColorDark.card,
    dividerColor: ColorDark.divider,
    textTheme: TextTheme(
      displayLarge: TextStyle(color: ColorDark.fontTitle),
      displayMedium: TextStyle(color: ColorDark.fontTitle),
      displaySmall: TextStyle(color: ColorDark.fontTitle),
      headlineLarge: TextStyle(color: ColorDark.fontTitle),
      headlineMedium: TextStyle(color: ColorDark.fontTitle),
      headlineSmall: TextStyle(color: ColorDark.fontTitle),
      titleLarge: TextStyle(color: ColorDark.fontTitle),
      titleMedium: TextStyle(color: ColorDark.fontSubtitle),
      titleSmall: TextStyle(color: ColorDark.fontSubtitle),
      bodyLarge: TextStyle(color: ColorDark.fontTitle),
      bodyMedium: TextStyle(color: ColorDark.fontSubtitle),
      bodySmall: TextStyle(color: ColorDark.fontSubtitle),
      labelLarge: TextStyle(color: ColorDark.fontTitle),
      labelMedium: TextStyle(color: ColorDark.fontSubtitle),
      labelSmall: TextStyle(color: ColorDark.fontSubtitle),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorDark.primary,
        disabledBackgroundColor: ColorDark.disabledButton,
        disabledForegroundColor: ColorDark.fontDisable,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorDark.primary,
      foregroundColor: ColorDark.surface,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorDark.secondary,
      labelStyle: TextStyle(color: ColorDark.fontSubtitle),
      hintStyle: TextStyle(color: ColorDark.fontDisable),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.625 * 16),
        borderSide: BorderSide(color: ColorDark.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.625 * 16),
        borderSide: BorderSide(color: ColorDark.primary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0.625 * 16),
        borderSide: BorderSide(color: ColorDark.primary),
      ),
    ),
    toggleButtonsTheme: ToggleButtonsThemeData(
      selectedColor: ColorDark.secondary,
      color: ColorDark.fontTitle,
      fillColor: ColorDark.primary,
    ),
  );
}
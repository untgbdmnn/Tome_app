import 'dart:ui';

class ColorLight {
  static const Color primary = Color(0xFF3568C3); // Converted from --primary (light)
  static const Color secondary = Color(0xFFEFEDF9); // Converted from --secondary (light)
  static const Color surface = Color(0xFFFFFFFF); // Converted from --background (light)
  static const Color card = Color(0xFFFFFFFF); // Converted from --card (light)
  static const Color fontTitle = Color(0xFF262626); // Converted from --foreground (light)
  static const Color fontSubtitle = Color(0xFF8D8D8D); // Converted from --muted-foreground (light)
  static const Color fontDisable = Color(0xFFEBEBEB); // Approximation for disabled text/elements
  static const Color disabledButton = Color(0xFFEBEBEB); // Approximation for disabled button
  static const Color divider = Color(0xFFEBEBEB); // Converted from --border (light)

  static const Color success = Color(0xFF81C784); // Kept from your example
  static const Color warning = Color(0xFFFFB74D); // Kept from your example
  static const Color error = Color(0xFFE57373); // Converted from --destructive (light)
  static const Color info = Color(0xFF64B5F6); // Approximation for info

  // Other (Chart colors and sidebar colors added for completeness)
  static const Color chart1 = Color(0xFFAC5D01); // Converted from --chart-1 (light)
  static const Color chart2 = Color(0xFF006D67); // Converted from --chart-2 (light)
  static const Color chart3 = Color(0xFF4C006C); // Converted from --chart-3 (light)
  static const Color chart4 = Color(0xFF86AC00); // Converted from --chart-4 (light)
  static const Color chart5 = Color(0xFF8D5300); // Converted from --chart-5 (light)

  static const Color sidebar = Color(0xFFFFFFFF); // Converted from --sidebar (light)
  static const Color sidebarForeground = Color(0xFF262626); // Converted from --sidebar-foreground (light)
  static const Color sidebarPrimary = Color(0xFF3568C3); // Converted from --sidebar-primary (light)
  static const Color sidebarPrimaryForeground = Color(0xFFFFFFFF); // Converted from --sidebar-primary-foreground (light)
  static const Color sidebarAccent = Color(0xFFEFEDF9); // Converted from --sidebar-accent (light)
  static const Color sidebarAccentForeground = Color(0xFF3568C3); // Converted from --sidebar-accent-foreground (light)
  static const Color sidebarBorder = Color(0xFFEBEBEB); // Converted from --sidebar-border (light)
  static const Color sidebarRing = Color(0xFF7A7A7A); // Converted from --sidebar-ring (light)
}

/// Defines the color palette for the dark theme of the application.
class ColorDark {
  static const Color primary = Color(0xFF3568C3); // Converted from --primary (dark)
  static const Color secondary = Color(0xFF444444); // Converted from --secondary (dark)
  static const Color surface = Color(0xFF262626); // Converted from --background (dark)
  static const Color card = Color(0xFF353535); // Converted from --card (dark)
  static const Color fontTitle = Color(0xFFFFFFFF); // Converted from --foreground (dark)
  static const Color fontSubtitle = Color(0xFF7A7A7A); // Converted from --muted-foreground (dark)
  static const Color fontDisable = Color(0xFF444444); // Approximation for disabled text/elements
  static const Color disabledButton = Color(0xFF444444); // Approximation for disabled button
  static const Color divider = Color(0xFF1A1A1A); // Converted from --border (dark)

  static const Color success = Color(0xFF81C784); // Kept from your example
  static const Color warning = Color(0xFFF57C00); // Kept from your example
  static const Color error = Color(0xFFD32F2F); // Converted from --destructive (dark)
  static const Color info = Color(0xFF1976D2); // Kept from your example

  // Other (Chart colors and sidebar colors added for completeness)
  static const Color chart1 = Color(0xFF002283); // Converted from --chart-1 (dark)
  static const Color chart2 = Color(0xFF4C824E); // Converted from --chart-2 (dark)
  static const Color chart3 = Color(0xFF8D5300); // Converted from --chart-3 (dark)
  static const Color chart4 = Color(0xFF003D9F); // Converted from --chart-4 (dark)
  static const Color chart5 = Color(0xFFB50036); // Converted from --chart-5 (dark)

  static const Color sidebar = Color(0xFF353535); // Converted from --sidebar (dark)
  static const Color sidebarForeground = Color(0xFFFFFFFF); // Converted from --sidebar-foreground (dark)
  static const Color sidebarPrimary = Color(0xFF002283); // Converted from --sidebar-primary (dark)
  static const Color sidebarPrimaryForeground = Color(0xFFFFFFFF); // Converted from --sidebar-primary-foreground (dark)
  static const Color sidebarAccent = Color(0xFF444444); // Converted from --sidebar-accent (dark)
  static const Color sidebarAccentForeground = Color(0xFFFFFFFF); // Converted from --sidebar-accent-foreground (dark)
  static const Color sidebarBorder = Color(0xFF1A1A1A); // Converted from --sidebar-border (dark)
  static const Color sidebarRing = Color(0xFF8D8D8D); // Converted from --sidebar-ring (dark)
}

/// Defines the color palette for general font colors, independent of theme.
class ColorFont {
  static const Color primary = Color(0xFF212B31); // Kept from your example
  static const Color secondary = Color(0xFF747474); // Kept from your example
}
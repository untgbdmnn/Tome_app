import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:tome_app/cores/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toastification/toastification.dart';
import 'package:tome_app/cores/routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      config: ToastificationConfig(
        animationDuration: const Duration(milliseconds: 300),
      ),
      child: AdaptiveTheme(
        light: lightTheme(),
        initial: AdaptiveThemeMode.system,
        dark: darkTheme(),
        builder: (theme, darkTheme) => MaterialApp.router(
          builder: FToastBuilder(),
          title: 'Tome',
          theme: theme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        ),
      ),
    );
  }
}
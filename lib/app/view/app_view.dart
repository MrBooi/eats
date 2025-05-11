import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:mrbooi_eats/home/home.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.material(
      title: 'MrBooi Eats',
      themeMode: ThemeMode.light,
      theme: const AppTheme().theme,
      darkTheme: const AppDarkTheme().theme,
      materialThemeBuilder: (context, theme) {
        return theme.copyWith(
          appBarTheme: const AppBarTheme(
            surfaceTintColor: AppColors.transparent,
          ),
          textTheme:
              theme.brightness == Brightness.light
                  ? const AppTheme().textTheme
                  : const AppDarkTheme().textTheme,
          snackBarTheme: const SnackBarThemeData(
            behavior: SnackBarBehavior.floating,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
      home: const HomePage(),
    );
  }
}

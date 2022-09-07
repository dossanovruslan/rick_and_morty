import 'package:flutter/material.dart';
import 'package:rick_and_morty/themes/colors.dart';

class Themes extends ChangeNotifier {
  final light = ThemeData(
    backgroundColor: AppColors.colorFFFFFF,
    scaffoldBackgroundColor: AppColors.colorFFFFFF,
    brightness: Brightness.light,
  );

  final dark = ThemeData(
    backgroundColor: AppColors.color0B1E2D,
    scaffoldBackgroundColor: AppColors.color0B1E2D,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.color0B1E2D,
    ),
    brightness: Brightness.dark,
  );
  late ThemeData _themeData;
  ThemeData getTheme() => _themeData;
  Themes() {
    _themeData = dark;
  }

  void setDarkMode() async {
    _themeData = dark;

    notifyListeners();
  }

  void setLightMode() async {
    _themeData = light;
    notifyListeners();
  }
}

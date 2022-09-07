import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/themes/theme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

bool darkMode = true;

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<Themes>(
        builder: (context, theme, child) => Scaffold(
          body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg_icons/icon_theme.svg'),
                      const SizedBox(width: 20),
                      const Text('Темная тема'),
                    ],
                  ),
                  Switch(
                    onChanged: (bool value) {
                      darkMode = value;
                      if (value) {
                        theme.setDarkMode();
                      } else {
                        theme.setLightMode();
                      }
                    },
                    value: darkMode,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

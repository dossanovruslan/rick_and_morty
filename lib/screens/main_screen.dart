import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/screens/characters_screen.dart';
import 'package:rick_and_morty/screens/episode_screen.dart';
import 'package:rick_and_morty/screens/location_screen.dart';
import 'package:rick_and_morty/screens/settings_screen.dart';
import 'package:rick_and_morty/themes/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;
  List pages = [
    const CharactersScreen(),
    const LocationScreen(),
    const EpisodeScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          // backgroundColor: AppColors.color152A3A,
          unselectedLabelStyle: const TextStyle(color: AppColors.color5B6975),
          selectedLabelStyle: const TextStyle(color: AppColors.color43D049),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              label: "Персонажи",
              icon: SvgPicture.asset('assets/svg_icons/icon_characters.svg'),
            ),
            BottomNavigationBarItem(
              label: "Локациии",
              icon: SvgPicture.asset('assets/svg_icons/icon_location.svg'),
            ),
            BottomNavigationBarItem(
              label: "Эпизоды",
              icon: SvgPicture.asset('assets/svg_icons/icon_episode.svg'),
            ),
            BottomNavigationBarItem(
              label: "Настройки",
              icon: SvgPicture.asset('assets/svg_icons/icon_settings.svg'),
            ),
          ],
        ),
      ),
    );
  }
}

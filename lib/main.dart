import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/screens/main_screen.dart';
import 'package:rick_and_morty/themes/theme.dart';

void main() {
  runApp(ChangeNotifierProvider<Themes>(
      create: (_) => Themes(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<Themes>(
      builder: (context, theme, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rick & Morty',
        theme: theme.getTheme(),
        home: const MainPage(),
      ),
    );
  }
}

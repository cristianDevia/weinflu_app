import 'package:flutter/material.dart';
import 'package:weinflu_app/desing/theme.dart';
import 'package:weinflu_app/pages/home_page.dart';

class WeinFluApp extends StatelessWidget {
  const WeinFluApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeinFlu App',
      theme: WeinFluThemes.defaultTheme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

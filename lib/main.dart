import 'package:flutter/material.dart';

import 'models.dart';
import 'artists_page.dart';

void main() {
  runApp(Cinq());
}

// #f57f2c
// #e7dbcf

class Cinq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cinq",
      home: ArtistsPage(),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        fontFamily: "SpaceGrotesk",
        // colorSchemeSeed: Color(0xFFF7ADC6),
        primaryColor: Color(0xFFF7ADC6),
        canvasColor: Color(0xFF111111),
        primaryColorLight: Color(0xFFFFFFFF),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

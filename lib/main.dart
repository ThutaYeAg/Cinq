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
      home: Home(),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: Color(0xFFE79F9F),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111111),
      appBar: AppBar(
        title: Text("Cinq"),
      ),
      body: ArtistsPage(),
    );
  }
}

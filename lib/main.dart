import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'data/models.dart';
import 'pages/artists_page.dart';
import 'pages/tracks_page.dart';
import 'pages/trackdetail_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Color(0xFF111111),
        systemNavigationBarColor: Color(0xFF111111)),
  );
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
      routes: {
        "/tracks": (ctx) => TracksPage(),
        "/detail": (ctx) => TrackDetailPage(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => ArtistsPage());
      },
    );
  }
}

class TBTest extends StatefulWidget {
  const TBTest({super.key});

  @override
  State<TBTest> createState() => _TBTestState();
}

class _TBTestState extends State<TBTest> with SingleTickerProviderStateMixin {
  List wdgs = [
    Container(
      child: Center(child: Text("skrrrt")),
    ),
    Container(
      child: Center(child: Text("bruh")),
    )
  ];
  int currIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wdgs[currIdx],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            currIdx = idx;
          });
        },
        currentIndex: currIdx,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_rounded),
            label: "Skrrt",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wrong_location_outlined),
            label: "Bruh",
          )
        ],
      ),
    );
  }
}

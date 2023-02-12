import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/dummy.dart';
import '../data/models.dart';
import 'global.dart';

class TracksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    List tracks = DUMMY_TRACKS;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: TracksAppBar(args["name"]),
      ),
      body: Container(
        child: Center(child: Text("bruh")),
        color: Theme.of(context).canvasColor,
      ),
    );
  }
}

class TracksAppBar extends StatelessWidget {
  final title;
  TracksAppBar(this.title);
  @override
  Widget build(BuildContext context) {
    return CinqAppBar(
      leading: SvgPicture.asset(
        'assets/icons/back-arr.svg',
        width: 25,
        height: 25,
        colorFilter: ColorFilter.mode(
          Theme.of(context).primaryColorLight,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          color: Theme.of(context).primaryColorLight.withOpacity(0.5),
        ),
      ),
    );
  }
}

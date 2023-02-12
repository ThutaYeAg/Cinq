import 'package:cinq/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/dummy.dart';
import '../data/models.dart';
import 'tracks_page.dart';

class CinqAppBar extends StatelessWidget {
  final leading;
  final title;

  const CinqAppBar({this.leading, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 32,
        right: 32,
      ),
      height: double.infinity,
      color: Theme.of(context).canvasColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: leading,
          ),
          title,
        ],
      ),
    );
  }
}

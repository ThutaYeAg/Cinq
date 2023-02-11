import 'package:flutter/material.dart';

class Artist {
  final String id;
  final String name;
  final String displayName;
  final String img;
  final String imgDark;

  const Artist({
    required this.id,
    required this.name,
    required this.img,
    required this.imgDark,
    required this.displayName,
  });
}

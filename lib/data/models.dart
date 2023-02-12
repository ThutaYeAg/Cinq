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

class Track {
  final String id;
  final String name;
  final String artistId;
  final String artistName;
  final String feat;
  final String producer;
  final String album;
  final String image;
  final String link;
  final String lyrics;
  final DateTime releaseDate;
  final Duration duration;

  const Track({
    required this.id,
    required this.name,
    required this.artistId,
    required this.artistName,
    required this.feat,
    required this.producer,
    required this.album,
    required this.image,
    required this.link,
    required this.lyrics,
    required this.releaseDate,
    required this.duration,
  });
}

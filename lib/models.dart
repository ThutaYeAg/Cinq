import 'package:flutter/material.dart';

class Artist {
  final String id;
  final String name;
  final Color color;
  const Artist(this.id, this.name, {this.color = Colors.black});
}

import 'package:cinq/dummy.dart';
import 'package:flutter/material.dart';
import 'models.dart';

class ArtistsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 50,
          mainAxisSpacing: 50,
          // childAspectRatio: 3 / 2,
        ),
        children: [...DUMMY_ARTISTS.map((e) => ArtistCard(e.name))],
      ),
    );
  }
}

class ArtistCard extends StatelessWidget {
  final String name;

  const ArtistCard(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE79F9F),
      height: 200,
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: Color(0xFF111111)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/dummy.dart';
import '../data/models.dart';
import 'tracks_page.dart';
import 'global.dart';

class ArtistsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: ArtistsAppBar(),
      ),
      body: Container(
        child: ListView(
          children: [
            CinqPageTitle("Artists."),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  ...DUMMY_ARTISTS.map((e) => ArtistCard(
                        e.name,
                        e.displayName,
                        e.id,
                        e.imgDark,
                      )),
                ],
              ),
            ),
          ],
          shrinkWrap: true,
        ),
      ),
    );
  }
}

class ArtistsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CinqAppBar(
      leading: SvgPicture.asset(
        'assets/icons/menu.svg',
        width: 30,
        height: 30,
        colorFilter: ColorFilter.mode(
          Theme.of(context).primaryColorLight,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        "cinq",
        style: TextStyle(
          fontSize: 24,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class ArtistCard extends StatelessWidget {
  final String name;
  final String displayName;
  final String id;
  final String image;

  const ArtistCard(this.name, this.displayName, this.id, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      // color: Colors.black38,
      height: 190,
      child: InkWell(
        highlightColor: Theme.of(context).primaryColor.withOpacity(0.1),
        splashColor: Theme.of(context).primaryColor.withOpacity(0.1),
        onTap: () {
          Navigator.of(context).pushNamed("/tracks", arguments: {
            "id": id,
            "name": name,
          });
        },
        child: Container(
          // color: Colors.grey.shade900,
          padding: EdgeInsets.symmetric(horizontal: 32),
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Image.asset(image),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      id + ".",
                      style: TextStyle(
                          color: Theme.of(context)
                              .primaryColorLight
                              .withOpacity(.2)),
                    ),
                    Container(
                      // width: 250,
                      child: Text(
                        displayName + ".",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 40),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

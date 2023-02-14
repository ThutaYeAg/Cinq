import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/dummy.dart';
import '../data/models.dart';
import 'global.dart';

class TracksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    List tracks = DUMMY_TRACKS
        .where((element) => element.artistId == args["id"])
        .toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: TracksAppBar(args["name"]),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                CinqPageTitle("Tracks."),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 32, right: 32),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 40,
                      crossAxisSpacing: MediaQuery.of(context).size.width - 374,
                      crossAxisCount: 2,
                      childAspectRatio: 155 / 204,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: tracks.length,
                    itemBuilder: (ctx, idx) {
                      return TrackCard(tracks[idx]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
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

class TrackCard extends StatelessWidget {
  final track;

  const TrackCard(this.track);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 204,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: Image.asset(
              track.image,
              width: 155,
              height: 155,
            ),
          ),
          FittedBox(
            child: Text(
              track.name.length >= 18
                  ? track.name.substring(0, 18) + "..."
                  : track.name,
              style: TextStyle(
                  color: Theme.of(context).primaryColor.withOpacity(.9),
                  fontSize: 18),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  track.duration.inMinutes.remainder(60).toString() +
                      ":" +
                      (track.duration.inSeconds
                                  .remainder(60)
                                  .toString()
                                  .length <
                              2
                          ? "0" +
                              track.duration.inSeconds.remainder(60).toString()
                          : track.duration.inSeconds.remainder(60).toString()),
                  style: TextStyle(
                    color: Theme.of(context).primaryColorLight.withOpacity(.5),
                    fontSize: 12,
                  ),
                ),
                FittedBox(
                  child: Text(
                    track.album.length >= 16
                        ? track.album.substring(0, 16) + "..."
                        : track.album,
                    style: TextStyle(
                      color:
                          Theme.of(context).primaryColorLight.withOpacity(.3),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

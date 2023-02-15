import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/dummy.dart';
import '../data/models.dart';
import 'global.dart';
import 'tracks_page.dart';

class TrackDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final track = ModalRoute.of(context)!.settings.arguments as Track;
    final Uri url = Uri.parse(track.link);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: TracksAppBar(track.artistName),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          print("click");
          launchUrl(url, mode: LaunchMode.externalApplication);
        },
        child: Container(
          margin: EdgeInsets.only(right: 16, bottom: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(35),
          ),
          alignment: Alignment.center,
          width: 70,
          height: 70,
          child: SvgPicture.asset(
            "assets/icons/play.svg",
            width: 33,
            height: 33,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      track.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 275,
                    ),
                    Container(
                      color: Colors.black.withOpacity(.60),
                      width: double.infinity,
                      height: 275,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                      height: 275,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              track.name.substring(track.name.length - 1) == "."
                                  ? track.name
                                  : track.name + ".",
                              style: TextStyle(
                                fontSize: 36,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          Text(
                            track.artistName,
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context)
                                  .primaryColorLight
                                  .withOpacity(.5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 40, left: 32, right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TrackData1("featuring", track.feat),
                      SizedBox(height: 20),
                      TrackData1("produced by", track.producer),
                      SizedBox(height: 40),
                      TrackData2("assets/icons/disc.svg", track.album),
                      SizedBox(height: 20),
                      TrackData2(
                          "assets/icons/calendar-clear.svg",
                          DateFormat("MMM. dd. yyyy")
                              .format(track.releaseDate)),
                      SizedBox(height: 20),
                      TrackData2(
                        "assets/icons/time.svg",
                        track.duration.inMinutes.remainder(60).toString() +
                            ":" +
                            (track.duration.inSeconds
                                        .remainder(60)
                                        .toString()
                                        .length <
                                    2
                                ? "0" +
                                    track.duration.inSeconds
                                        .remainder(60)
                                        .toString()
                                : track.duration.inSeconds
                                    .remainder(60)
                                    .toString()),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Theme.of(context).primaryColorLight.withOpacity(.2),
                  height: 0.5,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(
                    top: 40,
                    left: 32,
                    right: 32,
                    bottom: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lyrics.",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          letterSpacing: 4.8,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        track.lyrics,
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.28,
                          height: 2.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "[ THE END ]",
                  style: TextStyle(
                      fontSize: 12, color: Theme.of(context).primaryColor),
                ),
                SizedBox(height: 40)
                // Container(
                //   width: double.infinity,
                //   alignment: Alignment.center,
                //   padding: EdgeInsets.symmetric(vertical: 10),
                //   color: Theme.of(context).primaryColor.withOpacity(.85),
                //   child: Text("Lyrics by genius.com",
                //       style: TextStyle(
                //         color: Theme.of(context).canvasColor,
                //       )),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TrackData1 extends StatelessWidget {
  final title;
  final data;

  const TrackData1(this.title, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).primaryColorLight.withOpacity(.3),
              fontSize: 14,
            ),
          ),
          Text(
            data + ".",
            style: TextStyle(
              color: Theme.of(context).primaryColorLight.withOpacity(.75),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class TrackData2 extends StatelessWidget {
  final icon;
  final data;

  const TrackData2(this.icon, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
                Theme.of(context).primaryColor.withOpacity(.95),
                BlendMode.srcIn),
          ),
          SizedBox(width: 15),
          Text(
            data,
            style: TextStyle(
              color: Theme.of(context).primaryColorLight.withOpacity(.75),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

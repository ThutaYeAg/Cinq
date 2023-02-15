import 'package:flutter/material.dart';
import 'models.dart';
import 'lyrics.dart';

final List DUMMY_ARTISTS = [
  const Artist(
    id: "01",
    name: "Tyler, the Creator",
    displayName: "Tyler\nthe Creator",
    img: "assets/images/artists/tyler.png",
    imgDark: "assets/images/artists/tyler.png",
  ),
  const Artist(
    id: "02",
    name: "Cuco",
    displayName: "Cuco",
    img: "assets/images/artists/cuco.png",
    imgDark: "assets/images/artists/cuco.png",
  ),
  const Artist(
    id: "03",
    name: "Mac DeMarco",
    displayName: "Mac\nDeMarco",
    img: "assets/images/artists/macDeMarco.png",
    imgDark: "assets/images/artists/macDeMarco.png",
  ),
  const Artist(
    id: "04",
    name: "Mitski",
    displayName: "Mitski",
    img: "assets/images/artists/mitski.png",
    imgDark: "assets/images/artists/mitski.png",
  ),
  const Artist(
    id: "05",
    name: "Los Retros",
    displayName: "Los\nRetros",
    img: "assets/images/artists/losRetros.png",
    imgDark: "assets/images/artists/losRetros.png",
  ),
  const Artist(
    id: "06",
    name: "Clairo",
    displayName: "Clairo",
    img: "assets/images/artists/clairo.png",
    imgDark: "assets/images/artists/clairo.png",
  ),
  const Artist(
    id: "07",
    name: "Rex Orange County",
    displayName: "Rex Orange\nCounty",
    img: "assets/images/artists/rex.png",
    imgDark: "assets/images/artists/rex.png",
  ),
  const Artist(
    id: "08",
    name: "Steve Lacy",
    displayName: "Steve Lacy",
    img: "assets/images/artists/steveLacy.png",
    imgDark: "assets/images/artists/steveLacy.png",
  ),
  const Artist(
    id: "09",
    name: "Cigarettes After Sex",
    displayName: "Cigarettes\nAfter Sex",
    img: "assets/images/artists/casex.png",
    imgDark: "assets/images/artists/casex.png",
  ),
  const Artist(
    id: "10",
    name: "Men I Trust",
    displayName: "Men I Trust",
    img: "assets/images/artists/menI.png",
    imgDark: "assets/images/artists/menI.png",
  ),
];

final List DUMMY_TRACKS = [
  Track(
    id: "01.911",
    name: "911 / Mr. Lonely",
    artistId: "01",
    artistName: "Tyler, the Creator",
    feat: "Frank Ocean, Steve Lacy",
    producer: "Tyler, the Creator",
    album: "Flower Boy",
    image: "assets/images/tracks/flowerBoy.png",
    link: "https://youtu.be/khMb3k-Wwvg",
    lyrics: LYRICS["01.911"]!,
    releaseDate: DateTime(2017, 6, 30),
    duration: Duration(minutes: 4, seconds: 15),
  ),
  Track(
    id: "01.bestInt",
    name: "Best Interest",
    artistId: "01",
    artistName: "Tyler, the Creator",
    feat: "-",
    producer: "Tyler, the Creator",
    album: "Best Interest",
    image: "assets/images/tracks/bestInterest.png",
    link: "https://youtu.be/NkMTKGM-efw",
    lyrics: "",
    releaseDate: DateTime(2019, 12, 23),
    duration: Duration(minutes: 2, seconds: 7),
  ),
  Track(
    id: "01.gonegone",
    name: "Gone Gone / Thank You",
    artistId: "01",
    artistName: "Tyler, the Creator",
    feat: "Cullen Omori, Tatsuro Yamashita",
    producer: "Tyler, the Creator",
    album: "IGOR",
    image: "assets/images/tracks/igor.png",
    link: "https://youtu.be/m5UFGx53jUk",
    lyrics: "",
    releaseDate: DateTime(2019, 5, 17),
    duration: Duration(minutes: 6, seconds: 16),
  ),
  Track(
    id: "01.peachFuzz",
    name: "Peach Fuzz",
    artistId: "01",
    artistName: "Tyler, the Creator",
    feat: "-",
    producer: "Tyler, the Creator",
    album: "Peach Fuzz",
    image: "assets/images/tracks/peachFuzz.png",
    link: "https://youtu.be/dlG-1sQfEyE",
    lyrics: "",
    releaseDate: DateTime(2018, 6, 26),
    duration: Duration(minutes: 2, seconds: 36),
  ),
  Track(
    id: "01.boredom",
    name: "Boredom",
    artistId: "01",
    artistName: "Tyler, the Creator",
    feat: "Anna of the North, Rex Orange County",
    producer: "Tyler, the Creator",
    album: "Flower Boy",
    image: "assets/images/tracks/flowerBoy.png",
    link: "https://youtu.be/jxlBOBOZHqI",
    lyrics: "",
    releaseDate: DateTime(2017, 7, 11),
    duration: Duration(minutes: 5, seconds: 20),
  ),
  Track(
    id: "01.lemonHead",
    name: "Lemon Head",
    artistId: "01",
    artistName: "Tyler, the Creator",
    feat: "42 Dugg",
    producer: "Tyler, the Creator",
    album: "Call me if u get lost",
    image: "assets/images/tracks/callmeifugetlost.png",
    link: "https://youtu.be/a5JCltuobqQ",
    lyrics: "",
    releaseDate: DateTime(2021, 6, 25),
    duration: Duration(minutes: 2, seconds: 10),
  ),
  Track(
    id: "01.aBoyaGun",
    name: "A BOY IS A GUN*",
    artistId: "01",
    artistName: "Tyler, the Creator",
    feat: "-",
    producer: "Tyler, the Creator",
    album: "IGOR",
    image: "assets/images/tracks/igor.png",
    link: "https://youtu.be/9JQDPjpfiGw",
    lyrics: "",
    releaseDate: DateTime(2019, 5, 17),
    duration: Duration(minutes: 3, seconds: 30),
  ),
  Track(
    id: "02.loverisaday",
    name: "Lover is a day",
    artistId: "02",
    artistName: "Cuco",
    feat: "-",
    producer: "Cuco",
    album: "Wannabewithu",
    image: "assets/images/tracks/wannabewithu.png",
    link: "https://youtu.be/9wiEM0s4aCQ",
    lyrics: "",
    releaseDate: DateTime(2016, 4, 19),
    duration: Duration(minutes: 7, seconds: 36),
  ),
  Track(
    id: "02.loque",
    name: "Lo Que Siento",
    artistId: "02",
    artistName: "Cuco",
    feat: "-",
    producer: "Cuco",
    album: "Audiotree Live",
    image: "assets/images/tracks/loque.png",
    link: "https://youtu.be/AjGkbFqi67c",
    lyrics: "",
    releaseDate: DateTime(2017, 5, 25),
    duration: Duration(minutes: 5, seconds: 12),
  ),
  Track(
    id: "02.bossanose",
    name: "Bossa No Sé",
    artistId: "02",
    artistName: "Cuco",
    feat: "Jean Carter",
    producer: "Cuco",
    album: "Para Mi",
    image: "assets/images/tracks/parami.png",
    link: "https://youtu.be/VXQ3lzLq1S0",
    lyrics: "",
    releaseDate: DateTime(2019, 5, 21),
    duration: Duration(minutes: 3, seconds: 21),
  ),
  Track(
    id: "03.firsttime",
    name: "For the first time",
    artistId: "03",
    artistName: "Mac DeMarco",
    feat: "-",
    producer: "Mac DeMarco",
    album: "The Old Dog",
    image: "assets/images/tracks/oldDog.png",
    link: "https://youtu.be/el1S8zbzIPE",
    lyrics: "",
    releaseDate: DateTime(2017, 5, 5),
    duration: Duration(minutes: 3, seconds: 2),
  ),
  Track(
    id: "03.chamber",
    name: "Chamber of Reflection",
    artistId: "03",
    artistName: "Mac DeMarco",
    feat: "-",
    producer: "Mac DeMarco",
    album: "Salad Days",
    image: "assets/images/tracks/saladDays.png",
    link: "https://youtu.be/KSpeKBhXhwg",
    lyrics: "",
    releaseDate: DateTime(2014, 4, 1),
    duration: Duration(minutes: 3, seconds: 51),
  ),
  Track(
    id: "03.heart",
    name: "Heart to Heart",
    artistId: "03",
    artistName: "Mac DeMarco",
    feat: "-",
    producer: "Mac DeMarco",
    album: "Here Comes The Cowboy",
    image: "assets/images/tracks/herecowboy.png",
    link: "https://youtu.be/3JiSwJKPuy8",
    lyrics: "",
    releaseDate: DateTime(2019, 5, 10),
    duration: Duration(minutes: 3, seconds: 31),
  ),
  Track(
    id: "04.nobody",
    name: "Nobody",
    artistId: "04",
    artistName: "Mitski",
    feat: "-",
    producer: "Patrick Hyland",
    album: "Be the Cowboy",
    image: "assets/images/tracks/bethecowboy.png",
    link: "https://youtu.be/qooWnw5rEcI",
    lyrics: "",
    releaseDate: DateTime(2018, 6, 26),
    duration: Duration(minutes: 3, seconds: 13),
  ),
  Track(
    id: "04.firstLove",
    name: "First Love / Late Spring",
    artistId: "04",
    artistName: "Mitski",
    feat: "-",
    producer: "Patrick Hyland",
    album: "Bury Me at Makeout Creek",
    image: "assets/images/tracks/buryme.png",
    link: "https://youtu.be/vnWCHFUgKLg",
    lyrics: "",
    releaseDate: DateTime(2014, 5, 15),
    duration: Duration(minutes: 4, seconds: 38),
  ),
  Track(
    id: "04.washing",
    name: "Washing Machine Heart",
    artistId: "04",
    artistName: "Mitski",
    feat: "-",
    producer: "Patrick Hyland",
    album: "Be the Cowboy",
    image: "assets/images/tracks/bethecowboy.png",
    link: "https://youtu.be/3vjkh-acmTE",
    lyrics: "",
    releaseDate: DateTime(2018, 6, 26),
    duration: Duration(minutes: 3, seconds: 8),
  ),
  Track(
    id: "05.someone",
    name: "Someone To Spend Time With",
    artistId: "05",
    artistName: "Los Retros",
    feat: "Firelordmelissa",
    producer: "Los Retros",
    album: "Someone To Spend Time With",
    image: "assets/images/tracks/somonetospend.png",
    link: "https://youtu.be/VRQDOFaFqWk",
    lyrics: "",
    releaseDate: DateTime(2019, 2, 12),
    duration: Duration(minutes: 2, seconds: 53),
  ),
  Track(
    id: "05.itsgottobeu",
    name: "It's Got To Be You",
    artistId: "05",
    artistName: "Los Retros",
    feat: "-",
    producer: "Los Retros",
    album: "Retrospect",
    image: "assets/images/tracks/retrospect.png",
    link: "https://youtu.be/5xdc0yTwUmE",
    lyrics: "",
    releaseDate: DateTime(2017, 9, 5),
    duration: Duration(minutes: 3, seconds: 55),
  ),
  Track(
    id: "05.friends",
    name: "Friends",
    artistId: "05",
    artistName: "Los Retros",
    feat: "-",
    producer: "Los Retros",
    album: "Retrospect EP",
    image: "assets/images/tracks/retrospectep.png",
    link: "https://youtu.be/MJHdnCpkMBg",
    lyrics: "",
    releaseDate: DateTime(2019, 5, 20),
    duration: Duration(minutes: 2, seconds: 39),
  ),
  Track(
    id: "06.prettygirl",
    name: "Pretty Girl",
    artistId: "06",
    artistName: "Clairo",
    feat: "-",
    producer: "Clairo",
    album: "diary 001 - EP",
    image: "assets/images/tracks/prettygirl.png",
    link: "https://youtu.be/mngtcfcaVrI",
    lyrics: "",
    releaseDate: DateTime(2017, 8, 1),
    duration: Duration(minutes: 2, seconds: 58),
  ),
  Track(
    id: "06.cheetos",
    name: "Flaming Hot Cheetos",
    artistId: "06",
    artistName: "Clairo",
    feat: "-",
    producer: "Clairo",
    album: "diary 001 - EP",
    image: "assets/images/tracks/cheetos.png",
    link: "https://youtu.be/f43ODtOUmBw",
    lyrics: "",
    releaseDate: DateTime(2017, 6, 13),
    duration: Duration(minutes: 2, seconds: 3),
  ),
  Track(
    id: "06.sofia",
    name: "Sofia",
    artistId: "06",
    artistName: "Clairo",
    feat: "-",
    producer: "Rostam",
    album: "Immunity",
    image: "assets/images/tracks/immunity.png",
    link: "https://youtu.be/L9l8zCOwEII",
    lyrics: "",
    releaseDate: DateTime(2019, 7, 26),
    duration: Duration(minutes: 3, seconds: 8),
  ),
  Track(
    id: "07.sunflower",
    name: "Sunflower",
    artistId: "07",
    artistName: "Rex Orange County",
    feat: "-",
    producer: "Rex Orange County, Two Inch Punch",
    album: "Sunflower",
    image: "assets/images/tracks/sunflower.png",
    link: "https://youtu.be/Z9e7K6Hx_rY",
    lyrics: "",
    releaseDate: DateTime(2017, 3, 22),
    duration: Duration(minutes: 4, seconds: 12),
  ),
  Track(
    id: "07.corduroy",
    name: "Corduroy Dreams",
    artistId: "07",
    artistName: "Rex Orange County",
    feat: "-",
    producer: "Gianluca Bottoni",
    album: "Bcos U Will Never B Free",
    image: "assets/images/tracks/uwillneverfree.png",
    link: "https://youtu.be/PW8rbV7HnfE",
    lyrics: "",
    releaseDate: DateTime(2015, 5, 18),
    duration: Duration(minutes: 3, seconds: 26),
  ),
  Track(
    id: "07.pluto",
    name: "Pluto Projector",
    artistId: "07",
    artistName: "Rex Orange County",
    feat: "-",
    producer: "Ben Baptie, Rex Orange County",
    album: "Pony",
    image: "assets/images/tracks/pony.png",
    link: "https://youtu.be/l8yh5ZsjCTk",
    lyrics: "",
    releaseDate: DateTime(2019, 10, 17),
    duration: Duration(minutes: 4, seconds: 27),
  ),
  Track(
    id: "08.badhabbit",
    name: "Bad Habbit",
    artistId: "08",
    artistName: "Steve Lacy",
    feat: "-",
    producer: "Steve Lacy",
    album: "Gemini Rights",
    image: "assets/images/tracks/geminirights.png",
    link: "https://youtu.be/VF-FGf_ZZiI",
    lyrics: "",
    releaseDate: DateTime(2022, 6, 29),
    duration: Duration(minutes: 3, seconds: 52),
  ),
  Track(
    id: "08.darkred",
    name: "Dark Red",
    artistId: "08",
    artistName: "Steve Lacy",
    feat: "-",
    producer: "Steve Lacy",
    album: "Steve Lacy's Demo",
    image: "assets/images/tracks/darkred.png",
    link: "https://youtu.be/xRzbLQ_WKPs",
    lyrics: "",
    releaseDate: DateTime(2017, 2, 10),
    duration: Duration(minutes: 2, seconds: 53),
  ),
  Track(
    id: "08.infrunami",
    name: "Infrunami",
    artistId: "08",
    artistName: "Steve Lacy",
    feat: "-",
    producer: "Steve Lacy",
    album: "The Lo-Fis",
    image: "assets/images/tracks/thelofis.png",
    link: "https://youtu.be/Ol0-9Ob-QNk",
    lyrics: "",
    releaseDate: DateTime(2020, 12, 4),
    duration: Duration(minutes: 2, seconds: 58),
  ),
  Track(
    id: "09.apocalypse",
    name: "Apocalypse",
    artistId: "09",
    artistName: "Cigarettes After Sex",
    feat: "-",
    producer: "Greg Gonzalez",
    album: "Cigarettes After Sex",
    image: "assets/images/tracks/apocalypse.png",
    link: "https://youtu.be/sElE_BfQ67s",
    lyrics: "",
    releaseDate: DateTime(2017, 3, 20),
    duration: Duration(minutes: 4, seconds: 50),
  ),
  Track(
    id: "09.k",
    name: "K.",
    artistId: "09",
    artistName: "Cigarettes After Sex",
    feat: "-",
    producer: "Greg Gonzalez",
    album: "Cigarettes After Sex",
    image: "assets/images/tracks/k.png",
    link: "https://youtu.be/L4sbDxR22z4",
    lyrics: "",
    releaseDate: DateTime(2016, 11, 15),
    duration: Duration(minutes: 5, seconds: 19),
  ),
  Track(
    id: "09.sweet",
    name: "Sweet",
    artistId: "09",
    artistName: "Cigarettes After Sex",
    feat: "-",
    producer: "Greg Gonzalez",
    album: "Cigarettes After Sex",
    image: "assets/images/tracks/sweet.png",
    link: "https://youtu.be/pZ31pyTZdh0",
    lyrics: "",
    releaseDate: DateTime(2017, 6, 9),
    duration: Duration(minutes: 4, seconds: 51),
  ),
  Track(
    id: "10.showmehow",
    name: "Show Me How",
    artistId: "10",
    artistName: "Men I Trust",
    feat: "-",
    producer: "Men I Trust",
    album: "Oncle Jazz",
    image: "assets/images/tracks/showmehow.png",
    link: "https://youtu.be/OZRYzH0Q0pU",
    lyrics: "",
    releaseDate: DateTime(2018, 2, 28),
    duration: Duration(minutes: 3, seconds: 35),
  ),
  Track(
    id: "10.numb",
    name: "Numb",
    artistId: "10",
    artistName: "Men I Trust",
    feat: "-",
    producer: "Men I Trust",
    album: "Oncle Jazz",
    image: "assets/images/tracks/numb.png",
    link: "https://youtu.be/xAz_DzPUjrM",
    lyrics: "",
    releaseDate: DateTime(2019, 4, 12),
    duration: Duration(minutes: 3, seconds: 39),
  ),
  Track(
    id: "10.lauren",
    name: "Lauren",
    artistId: "10",
    artistName: "Men I Trust",
    feat: "-",
    producer: "Men I Trust",
    album: "Self-Titled First LP",
    image: "assets/images/tracks/lauren.png",
    link: "https://youtu.be/TNsSBhl_2LI",
    lyrics: "",
    releaseDate: DateTime(2016, 6, 13),
    duration: Duration(minutes: 3, seconds: 38),
  ),
];

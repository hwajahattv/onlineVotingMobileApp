import 'package:dashboard/constant.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../model/course_model.dart';
import '../model/planing_model.dart';
import '../model/statistics_model.dart';
import '../screens/components/side_menu.dart';

final List<Course> course = [
  Course(
      text: "Population Registration System",
      lessons: "Register as Voter",
      imageUrl: "images/pic/img5.png",
      percent: 75,
      backImage: "images/box/box2.png",
      color: kDarkBlue,
    onPressed: 'SideMenu()',),
  Course(
      text: "Population Registration System",
      lessons: "Register as Candidate",
      imageUrl: "images/pic/img8.png",
      percent: 50,
      backImage: "images/box/box1.png",
      color: kOrange,
    onPressed: 'Pressed',),
  Course(
      text: "Check if I am registered.",
      lessons: "Find my Voter ID.",
      imageUrl: "images/pic/img7.png",
      percent: 25,
      backImage: "images/box/box3.png",
      color: kGreen,
    onPressed: 'Pressed',),
  Course(
      text: "Cast my vote",
      lessons: "Don't know your voter ID? Visit 'Find me'",
      imageUrl: "images/pic/vote.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kYellow,
      onPressed: 'Pressed',
),
];

final List<Planing> planing = [
  Planing(
    heading: "Reading-Begineer Toipc 1",
    subHeading: "8:00 AM - 10:00 AM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
  Planing(
    heading: "Listening - Intermediate Topic 1",
    subHeading: "03:00 PM - 04:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Speaking - Beginner Topic 1",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Grammar - Intermediate Topic 2",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Listening - Intermediate Topic 1",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Grammar - Intermediate Topic 2",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Speaking - Beginner Topic 1",
    subHeading: "07:00 PM - 08:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Reading-Begineer Toipc 1",
    subHeading: "01:00 PM - 02:00 PM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
];

final List<Statistics> statistics = [
  Statistics(
    title: "Course Completed",
    number: "02",
  ),
  Statistics(
    title: "Total Points Gained",
    number: "250",
  ),
  Statistics(
    title: "Course In Progress ",
    number: "03",
  ),
  Statistics(
    title: "Tasks \nFinished",
    number: "05",
  )
];

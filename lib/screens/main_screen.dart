import 'package:dashboard/screens/components/chart_container.dart';
import 'package:dashboard/widgets/activity_header.dart';
import 'package:dashboard/widgets/bar_chart.dart';
import 'package:dashboard/widgets/courses_grid.dart';
import 'package:dashboard/widgets/planing_grid.dart';
import 'package:dashboard/widgets/statistics_grid.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/planing_header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.network('https://www.png-biometric-evoting.online/public/img/pngFlag.png').color,

      // backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey, size: 28),
            centerTitle: true,
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.search,
          //     color: Colors.grey,
          //   ),
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.notifications,
          //     color: Colors.grey,
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.only(top: 5, right: 36, bottom: 5),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.png-biometric-evoting.online/public/img/pngFlag.png"),
            ),
          )
        ],
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Hello",
                  style: TextStyle(color: kDarkBlue, fontSize: 20),
                  children: [
                    TextSpan(
                      text: ", welcome to the",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "PNG Online Voting App",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //   "View All",
                  //   style: TextStyle(color: kDarkBlue),
                  // ),
                ],
              ),

              const SizedBox(
                height: 10,

              ),
              const CourseGrid(),
              const SizedBox(
                height: 20,
              ),
              // const PlaningHeader(),
              // const SizedBox(
              //   height: 15,
              // ),
              // const PlaningGrid(),
              // const SizedBox(
              //   height: 15,
              // ),
              // const Text(
              //   "Statistics",
              //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // const StatisticsGrid(),
              // const SizedBox(
              //   height: 15,
              // ),
              // const ActivityHeader(),
              // const ChartContainer(chart: BarChartContent())
            ],
          ),
        ),
      ),
    );
  }
}

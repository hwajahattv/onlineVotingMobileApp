import 'package:dashboard/data/data.dart';
import 'package:dashboard/main.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:dashboard/route_generator.dart';

import '../FormPage.dart';

class CourseGrid extends StatelessWidget {
  const CourseGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: course.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 8, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(course[index].backImage), fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          overflow: TextOverflow.ellipsis,
                          course[index].text,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white)),
                      Text(
                        course[index].lessons,
                        style: const TextStyle(color: Colors.white),
                      ),
                      // CircularPercentIndicator(
                      //   radius: 30,
                      //   lineWidth: 8,
                      //   animation: true,
                      //   animationDuration: 1500,
                      //   circularStrokeCap: CircularStrokeCap.round,
                      //   percent: course[index].percent / 100,
                      //   progressColor: Colors.white,
                      //   center: Text(
                      //     "${course[index].percent}%",
                      //     style: const TextStyle(color: Colors.white),
                      //   ),
                      // )

                      Image.asset(course[index].imageUrl,
                          height: 35, fit: BoxFit.contain),
                      if (index == 0) ...[
                        TextButton(
                          //Set the foreground color
                          // primary: Colors.red,
                          //Set the padding on all sides to 20px
                          // padding: const EdgeInsets.all(20.0),

                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black54)),
                          onPressed: () {
                            print('Voter page opened');
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RegisterVoter(),
                              ),
                            );
                            print(index);
                          },
                          child: Text("Register here",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                      if (index == 1) ...[
                        TextButton(
                          //Set the foreground color
                          // primary: Colors.red,
                          //Set the padding on all sides to 20px
                          // padding: const EdgeInsets.all(20.0),

                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black54)),
                          onPressed: () {
                            print('candidate page opened');
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RegisterCandidate(),
                              ),
                            );
                            print(index);
                          },
                          child: Text("Register here",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                      if (index == 2) ...[
                        TextButton(
                          //Set the foreground color
                          // primary: Colors.red,
                          //Set the padding on all sides to 20px
                          // padding: const EdgeInsets.all(20.0),

                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black54)),
                          onPressed: () {
                            print('verify voter page opened');
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VerifyRegistration(),
                              ),
                            );
                            print(index);
                          },
                          child: Text("Find me",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                      if (index == 3) ...[
                        TextButton(
                          //Set the foreground color
                          // primary: Colors.red,
                          //Set the padding on all sides to 20px
                          // padding: const EdgeInsets.all(20.0),

                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black54)),
                          onPressed: () {
                            print('verify voter page opened');
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CastVoteWithVoterID(),
                              ),
                            );
                            print(index);
                          },
                          child: Text("Cast my vote",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}

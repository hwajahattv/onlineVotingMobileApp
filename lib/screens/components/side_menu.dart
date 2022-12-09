import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../../constant.dart';
import '../../main.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                child: Image.network(
              "https://www.png-biometric-evoting.online/public/img/pngFlag.png",
            )),
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.home_2,
            title: "Home",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.menu,
            title: "Register as a voter",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RegisterVoter(),
                ),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.folder,
            title: "Register as a candidate",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RegisterCandidate(),
                ),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.chat,
            title: "Check if I am registered",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => VerifyRegistration(),
                ),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.settings,
            title: "Settings",
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "images/download.png",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                color: kLightBlue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Upgrade your plan",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Go to Pro", style: TextStyle(color: kDarkBlue)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: kDarkBlue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: kDarkBlue,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

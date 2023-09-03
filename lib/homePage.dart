import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badge;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 89, 198, 43),
        title:
            const Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(right: 0),
            child: Center(
              child: Text(
                "Salut Ben ! 👋",
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 0),
            child: Text(
              "Profites de ce qu'il y'a autour de toi",
              style: TextStyle(fontSize: 13),
            ),
          )
        ]),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: IconButton.filled(
                onPressed: () {},
                icon: badge.Badge(
                  badgeContent: const Text(
                    "9",
                    style: TextStyle(color: Colors.white),
                  ),
                  position:
                      badge.BadgePosition.topStart(top: -12, start: -10.5),
                  child: const Icon(IconlyBroken.notification),
                )),
          )
        ],
      ),
    );
  }
}

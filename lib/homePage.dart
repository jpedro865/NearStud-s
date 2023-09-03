import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badge;
import 'package:nearstuds/page_cart.dart';
import 'package:nearstuds/page_d_exploration.dart';
import 'package:nearstuds/page_profil.dart';
import 'package:nearstuds/services_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final page = [
    const PageExploration(),
    const PageServices(),
    const PageCart(),
    const PageProfil()
  ];
  int indexDePage = 0;

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
      body: page[indexDePage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexDePage,
          onTap: ((index) {
            setState(() {
              indexDePage = index;
            });
          }),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.home,
                  color: Color.fromARGB(255, 89, 198, 43),
                ),
                activeIcon: Icon(
                  IconlyBold.home,
                  color: Color.fromARGB(255, 89, 198, 43),
                ),
                label: "Acceuil"),
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.ticket,
                  color: Color.fromARGB(255, 89, 198, 43),
                ),
                activeIcon: Icon(
                  IconlyBold.ticket,
                  color: Color.fromARGB(255, 89, 198, 43),
                ),
                label: "Trouver une activité"),
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.heart,
                  color: Color.fromARGB(255, 89, 198, 43),
                ),
                activeIcon: Icon(
                  IconlyBold.heart,
                  color: Color.fromARGB(255, 89, 198, 43),
                ),
                label: "Favoris"),
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.location,
                  color: Color.fromARGB(255, 89, 198, 43),
                ),
                activeIcon: Icon(
                  IconlyBold.location,
                  color: Color.fromARGB(255, 89, 198, 43),
                ),
                label: "Plan"),
          ]),
    );
  }
}

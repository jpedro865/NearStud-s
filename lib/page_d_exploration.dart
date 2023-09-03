import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class PageExploration extends StatelessWidget {
  const PageExploration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.only(
              left: 15.3, right: 15.3, top: 30, bottom: 15.3),
          children: [
            Row(
              children: [
                const Expanded(
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 98, 232, 40),
                    decoration: InputDecoration(
                        hintText: "Rechercher ...",
                        isDense: true,
                  border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 98, 232, 40)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .green), // Couleur de la bordure en focus
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                 enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Color.fromARGB(255, 98, 232, 40)),
                               borderRadius: BorderRadius.all(Radius.circular(15))),
                                ),
                  ),
                ),
                IconButton.filled(
                    onPressed: () {}, icon: const Icon(IconlyLight.filter)),
              ],
            )
          ]),
    );
  }
}

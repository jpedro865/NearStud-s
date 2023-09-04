import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nearstuds/data/activite.dart';
import 'package:nearstuds/register.dart';
import 'package:nearstuds/widgets/carte_activite.dart';

class PageExploration extends StatelessWidget {
  const PageExploration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding:
              const EdgeInsets.only(left: 13, right: 13, top: 30, bottom: 15.3),
          children: [
            Row(
              children: [
                BarreDeRecherche(),
                Padding(
                  padding: const EdgeInsets.only(left: 3, right: 0),
                  child: IconButton.filled(
                      onPressed: () {}, icon: const Icon(IconlyLight.filter)),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 170,
                child: Card(
                  elevation: 6,
                  color: Color.fromARGB(255, 180, 223, 187),
                  shadowColor: Color.fromARGB(255, 180, 223, 187),
                  child: Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 125, top: 20),
                              child: Text(
                                "Promos NearStud' !! ",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 30, 91, 30)),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 125, right: 5),
                              child: Text(
                                "-25% pour tout les -25 ans",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 143, 147, 144)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 125, right: 5),
                              child: Text(
                                "Localisez-vous  !",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 143, 147, 144)),
                              ),
                            ),
                            SizedBox(height: 13),
                            BtnMeLocaliser(title: "Me localiser")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Quelques activitée rien que pour vous !"),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Voir tout",
                      style:
                          TextStyle(color: Color.fromARGB(255, 118, 197, 81)),
                    )),
              ],
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: activite.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8),
                itemBuilder: ((context, index) {
                  return CarteActivite(activite: activite[index]);
                }))
          ]),
    );
  }
}

class BarreDeRecherche extends StatelessWidget {
  const BarreDeRecherche({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        cursorColor: Color.fromARGB(255, 98, 232, 40),
        decoration: InputDecoration(
            hintText: "Rechercher ...",
            isDense: true,
            contentPadding:
                EdgeInsets.all(12), // affaisse legerement la barre de recherche
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 98, 232, 40)),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 98, 232, 40)),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            prefixIcon: Icon(
              IconlyLight.search,
              color: Color.fromARGB(255, 98, 232, 40),
            )),
      ),
    );
  }
}

class BtnMeLocaliser extends StatelessWidget {
  final String title;
  const BtnMeLocaliser({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed("/maps");
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(180, 46),
        elevation: 22,
        backgroundColor: Colors.white,
        side:
            const BorderSide(width: 1, color: Color.fromARGB(255, 98, 232, 40)),
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 15, color: Color.fromARGB(255, 98, 232, 40)),
      ),
    );
  }
}

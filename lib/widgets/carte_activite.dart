import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nearstuds/data/activite.dart';
import 'package:nearstuds/models/activity.dart';

class CarteActivite extends StatefulWidget {
  const CarteActivite({super.key, required this.activite});

  final Activite activite;
  @override
  State<CarteActivite> createState() => _CarteActiviteState();
}

class _CarteActiviteState extends State<CarteActivite> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(width: 0.8, color: Color.fromARGB(255, 18, 88, 55))),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/logo_fond_vert.png'),
                  fit: BoxFit.cover),
            ),
            child: IconButton.filledTonal(
                onPressed: () {}, icon: Icon(IconlyLight.bookmark)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    widget.activite.nomActivite,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 107, 107, 107)),
                  ),
                ),
                Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "30€",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w200,
                              color: Colors.black)),
                      TextSpan(
                          text: "/l'heure",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.black))
                    ])),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: IconButton.filled(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 51, 163, 55),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

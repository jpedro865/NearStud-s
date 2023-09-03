import 'package:flutter/material.dart';
import 'package:nearstuds/login.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Contenu(),
    );
  }
}

// =================== CONTENU ===================== \\

class Contenu extends StatelessWidget {
  const Contenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 260,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 98, 232, 40),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.elliptical(75, 75))),
            child: Column(
              children: [
                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset(
                    "assets/logo_fond_vert.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Bienvenue",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          inputStyle("Nom", "Moyon"),
          const SizedBox(height: 10),
          inputStyle("Prénom", "Pedro"),
          const SizedBox(height: 4),
          inputStyle("Email", "bilkamoyonpedro89@gmail.com"),
          const SizedBox(height: 4),
          inputStyle("Mot de passe", "34Yyuu9HRR8_"),
          const SizedBox(height: 4),
          inputStyle("Localisation", "********"),
          const SizedBox(height: 4),
          inputStyle("Age", "Quel age avez-vous ?"),
          const SizedBox(height: 4),
          inputStyle("Numéro de télephone", "07 54 44 ** **"),
          const SizedBox(height: 6),
          const BoutonReg(title: "Je rejoins Near'Stud"),
          const SizedBox(height: 16),
          const BoutonRetourLogin(title: "Revenir en arrière"),
        ],
      ),
    );
  }
}

class BoutonReg extends StatelessWidget {
  final String title;
  const BoutonReg({
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
        minimumSize: const Size(200, 50),
        elevation: 90,
        backgroundColor: const Color.fromARGB(255, 98, 232, 40),
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
    );
  }
}

class BoutonRetourLogin extends StatelessWidget {
  final String title;
  const BoutonRetourLogin({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed("/login");
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 50),
        elevation: 80,
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

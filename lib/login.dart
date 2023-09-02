// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: content(context)),
    );
  }
}

Widget content(BuildContext context) {
  return Column(
    children: [
      Container(
        height: 220,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 98, 232, 40),
            borderRadius:
                BorderRadius.only(bottomRight: Radius.elliptical(75, 75))),
        child: Column(
          children: [
            SizedBox(height: 12),
            Image.asset(
              "assets/logo_fond_vert.png",
              height: 150,
              width: 150,
            ),
            const Text(
              "Comment allez vous ?",
              style: TextStyle(
                fontSize: 21,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )
          ],
        ),
      ),
      const SizedBox(height: 70),
      inputStyle("Nom d'utilisateur", "Entrez votre pseudo"),
      const SizedBox(height: 30),
      inputStyle("Mot de passe", "Entrez votre mot de passe"),
      const SizedBox(height: 300),
      const BoutonCoRe(
        title: "Se connecter",
      ),
      const SizedBox(height: 20),
      RichText(
          text: TextSpan(
        children: [
          const TextSpan(
              text: "Tu n'as pas encore de compte ?   ",
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          TextSpan(
            text: "Inscription",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.of(context).pushNamed("/register");
              },
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 17, 111, 20),
            ),
          )
        ],
      ))
    ],
  );
}

class BoutonCoRe extends StatelessWidget {
  final String title;
  const BoutonCoRe({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Action à effectuer lorsque le bouton est pressé
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(240, 60),
        elevation: 7,
        backgroundColor: const Color.fromARGB(255, 98, 232, 40),
        padding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}

Widget inputStyle(String title, String hinTxt) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 5, 12, 10),
    child: Row(
      children: [
        Text(
          "$title: ",
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 42,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3))
              ],
            ),
            child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        const EdgeInsets.only(left: 15, bottom: 14, top: 10),
                    hintText: hinTxt)),
          ),
        ),
      ],
    ),
  );
}

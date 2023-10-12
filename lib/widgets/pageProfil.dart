import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Profil'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 120.0,
            height: 120.0,
            margin: EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('avatar.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ), 
          SizedBox(height: 10.0),
          Text(
            'Prénom Nom',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('Âge: 30 ans'),
          Text('Adresse: 123 Rue de l\'Exemple'),
          Text('Lieu préféré: Parc de l\'Exemple'),
          Text('Abonnement actif: Oui'),
        ],
      ),
    );
  }
}

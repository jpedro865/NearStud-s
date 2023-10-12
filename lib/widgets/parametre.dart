import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parametres'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Mon compte'),
            onTap: () {
             
            },
          ),
  ListTile(
            title: Text('Confidentialité'),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('Données personnelles'),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('Abonnement'),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('Se déconnecter'),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}
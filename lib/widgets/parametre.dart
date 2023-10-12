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
        title: Text('Paramètres'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Mon compte'),
            onTap: () {
              // Action lorsque "Mon compte" est cliqué
            },
          ),
  ListTile(
            title: Text('Confidentialité'),
            onTap: () {
              // Action lorsque "Confidentialité" est cliqué
            },
          ),
          ListTile(
            title: Text('Données personnelles'),
            onTap: () {
              // Action lorsque "Données personnelles" est cliqué
            },
          ),
          ListTile(
            title: Text('Abonnement'),
            onTap: () {
              // Action lorsque "Abonnement" est cliqué
            },
          ),
          ListTile(
            title: Text('Se déconnecter'),
            onTap: () {
              // Action lorsque "Se déconnecter" est cliqué
            },
          ),
        ],
      ),
    );
  }
}
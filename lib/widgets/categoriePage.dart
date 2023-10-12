import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catégories'),
      ),
      body: ListView(
        children: <Widget>[
          CategoryCard(
            title: 'Bars',
            subtitle: 'Trouvez les meilleurs bars à proximité',
            image: 'bar_image.jpg',
          ),

           CategoryCard(
            title: 'Activités',
            subtitle: 'Découvrez des activités passionnantes',
            image: 'activity_image.jpg',
          ),
          // Ajoutez d'autres catégories ici
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
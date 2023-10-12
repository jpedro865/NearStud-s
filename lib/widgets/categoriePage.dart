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
          
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

    CategoryCard({required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Naviguez vers la liste des lieux ou services de la catégorie
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(image, height: 150, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(subtitle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
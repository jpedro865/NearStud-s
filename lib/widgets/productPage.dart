import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du produit'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.network(
              'https://example.com/product_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
           Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Nom du produit',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                     
                    },
                    child: Text('Ajouter au panier'),
                  ),
                ],
              ),
            ),
          ),

           Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                Text(
                  'Lieu du produit',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text('Titre du lieu'),
                SizedBox(height: 16),

                 Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                Text(
                  'Lieu du produit',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  SizedBox(height: 8),
                Text('Titre du lieu'),
                SizedBox(height: 16),

                Container(
                  height: 200, // Ajustez la hauteur de la carte selon vos besoins
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(37.7749, -122.4194), // Coordonnées de San Francisco, à remplacer par celles du lieu du produit
                      zoom: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

                
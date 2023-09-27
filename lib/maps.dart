import 'package:flutter/material.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  String GoogleApiKey = "";
  int _currentIndex = 0;

  List<IconData> _icons = [
    Icons.home,
    Icons.favorite,
    Icons.search,
    Icons.maps_home_work,
  ];

  List<Color> _iconColors = [
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: Center(
        child: Text('==> ${_currentIndex + 1}'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: _icons.asMap().entries.map((entry) {
          int index = entry.key;
          IconData icon = entry.value;
          Color color = _iconColors[index];

          return BottomNavigationBarItem(
            icon: Icon(
              icon,
              color: color,
            ),
            label: 'Item $index',
          );
        }).toList(),
      ),
    );
  }
}

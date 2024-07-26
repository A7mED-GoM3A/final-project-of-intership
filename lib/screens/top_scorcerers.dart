import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopSorcerersScreen(),
    );
  }
}

class TopSorcerersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1B35), // background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Text(
              'Top Sorcerers :-',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SorcererCard(color: Colors.amber, text: 'TOP #1'),
                  SorcererCard(color: Colors.grey, text: 'TOP #2'),
                  SorcererCard(color: Colors.brown, text: 'TOP #3'),
                  SorcererCard(color: Colors.white, text: '#4', textColor: Colors.black),
                  SorcererCard(color: Colors.white, text: '#5', textColor: Colors.black),
                  SorcererCard(color: Colors.white, text: '#6', textColor: Colors.black),
                  SorcererCard(color: Colors.grey.shade800, text: '#7', textColor: Colors.grey),
                  SorcererCard(color: Colors.grey.shade800, text: '#8', textColor: Colors.grey),
                  SorcererCard(color: Colors.grey.shade800, text: '#9', textColor: Colors.grey),
                  SorcererCard(color: Colors.grey.shade800, text: '#10', textColor: Colors.grey),
                ],
              ),
            ),
            BottomNavigationBarCustom(),
          ],
        ),
      ),
    );
  }
}

class SorcererCard extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;

  SorcererCard({required this.color, required this.text, this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF1C1B35),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BottomNavItem(
              icon: Icons.group,
              label: 'Teams',
              isSelected: false,
            ),
            BottomNavItem(
              icon: Icons.emoji_events,
              label: 'Top Scorers',
              isSelected: true,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  BottomNavItem({required this.icon, required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          icon,
          color: isSelected ? Colors.cyan : Colors.white,
          size: 30,
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.cyan : Colors.white,
          ),
        ),
      ],
    );
  }
}

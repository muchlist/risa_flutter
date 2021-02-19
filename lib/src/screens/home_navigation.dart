import 'package:flutter/material.dart';

import 'home.dart';

class BottomNavRisa extends StatefulWidget {
  BottomNavRisa({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BottomNavRisa> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 126, 124, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('RISA'),
        actions: <Widget>[
          Row(
            children: <Widget>[
              const Text("Gema Muhammad Eqbal"),
              SizedBox(
                width: 10,
              ),
              // Icon(Icons.account_circle),
              Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/incident.png'),
                ),
              )
            ],
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Add Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'History',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[300],
        onTap: _onItemTapped,
      ),
    );
  }
}

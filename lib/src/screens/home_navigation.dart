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

  //INSIDE NAVIGATION VIEW
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

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      if (index == 1) {
        _startAddIncident(context);
      } else {
        _selectedIndex = index;
      }
    });
  }

  void _startAddIncident(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (bCtx) {
          return Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Container(
              child: Center(
                child: Text("AJHAHAHA"),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 126, 124, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 126, 124, 255),
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
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.black,
      //   ),
      //   backgroundColor: Colors.white,
      //   onPressed: () => _startAddIncident(context),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
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
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }
}

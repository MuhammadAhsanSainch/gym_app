import 'package:flutter/material.dart';
import 'package:health_fitness/screens/mentors.dart';
import 'package:health_fitness/screens/resources.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    const Text('Home'),
    const Resourses(),
    const MentorsList(),
  ];

  void _onTapped(int a) {
    setState(() {
      _selectedIndex = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: WillPopScope(
        onWillPop: () async {
          //disable the back button behavior
          return false;
        },
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center_outlined), label: 'Resourses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Subscribers'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        onTap: _onTapped,
        backgroundColor: Colors.black,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodies/ui/home.dart';
import 'package:foodies/ui/profile.dart';

class FoodiesMenuPage extends StatefulWidget {
  const FoodiesMenuPage({Key? key}) : super(key: key);

  @override
  State<FoodiesMenuPage> createState() => _FoodiesMenuPageState();
}

class _FoodiesMenuPageState extends State<FoodiesMenuPage> {

  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": const HomeScreen()},
    {"screen": const ProfileScreen()}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: "Profile")
        ],
      ),
    );
  }
}

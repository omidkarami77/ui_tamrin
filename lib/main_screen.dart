import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_tamrin/detail_khabar.dart';
import 'package:ui_tamrin/home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: Container(
        child: ClipRRect(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xffF5F5F5),
            currentIndex: _selectedBottomNavigationItem,
            onTap: (int index) {
              setState(() {
                _selectedBottomNavigationItem = index;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('images/profile_not_active.png'),
                activeIcon: Image.asset('images/profile_not_active.png'),
                label: 'Item1',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/save.png'),
                activeIcon: Image.asset('images/save.png'),
                label: 'Item2',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/add-circle.png'),
                activeIcon: Image.asset('images/add-circle.png'),
                label: 'Item3',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/discover.png'),
                activeIcon: Image.asset('images/discover_on.png'),
                label: 'Item4',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/discover.png'),
                activeIcon: Image.asset('images/discover_on.png'),
                label: 'Item4',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/home.png'),
                activeIcon: Image.asset('images/home_on.png'),
                label: 'Item4',
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      HomeScreen(),
      DetailKhabar(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
  }
}

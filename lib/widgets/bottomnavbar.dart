import 'package:flutter/material.dart';
import 'package:newvenue/screens/HomeScreen.dart';
import 'package:newvenue/screens/youraccounts.dart';
import 'package:newvenue/screens/yourcustomers.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _children = [HomeScreen(), YourCustomers(), YourAccounts()];
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.green,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
              ),
              label: 'Players',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.money,
              ),
              label: 'Finances',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.crop_square),
              label: 'Analytics',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'Inbox',
            ),
          ],
          currentIndex: _selectedindex,
          onTap: _onItemTapped,
        ),
      ),
      body: _children[_selectedindex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }
}

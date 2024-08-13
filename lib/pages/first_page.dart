import 'package:flutter/material.dart';
import 'package:flutter_koko/pages/home_page.dart';
import 'package:flutter_koko/pages/profile.dart';
import 'package:flutter_koko/pages/second_page.dart';
import 'package:flutter_koko/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
 FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
 int _selectedIndex = 0;

 void _navigateBottomBar(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }

  final List _pages = [
    HomePage(),

    ProfilePage(),

    Setting(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text('1st page'),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting'
          ),
        ],
      ),

      // drawer: Drawer(
      //   backgroundColor: Colors.lightBlue,
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         child: Icon(
      //           Icons.favorite,
      //           size: 40,
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("H O M E"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/homepage');
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("Setting"),
      //         onTap: () {
      //           Navigator.pushNamed(context, '/settingpage');
      //         },
      //       ),
      //
      //     ],
      //   ),
      // ),
    );
  }
}

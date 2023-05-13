import 'package:dochere/pages/schedule_page.dart';
import 'package:dochere/pages/home_page.dart';
import 'package:dochere/pages/profile_page.dart';
import 'package:dochere/pages/doctor_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}


class _MyHomeState extends State<MyHome> {
  int _currentIndex = 0;
  final List<dynamic> pages = [
    HomePage(),
    Doctors(),
    SchedulePage(),
    Profile(),

  ];
  // final List<Widget> pages=[
  //   Center(child: Text('Home'),),
  //   Center(child: Text('Settings'),),
  //   Center(child: Text('Profile'),),
  // ];

  void selectedIndex(int index) {
    setState(() {
      _currentIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      //   title: Center(
      //     child: Text(
      //       "DocHere",
      //     ),
      //   ),
      //   // automaticallyImplyLeading: false,
      // ),
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 2.7/5,
        color: Color(0xff003B6F),
        child: SalomonBottomBar(
          itemPadding: EdgeInsets.all(16),
          currentIndex: _currentIndex,
          onTap:selectedIndex,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home,size: 23),
              title: Text("Home"),
              selectedColor: Colors.lightBlue,
            ),
            SalomonBottomBarItem(
              icon: Icon(MdiIcons.stethoscope,size: 23),
              title: Text("Doctors"),
              selectedColor: Colors.redAccent,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.calendar_month,size: 23),
              title: Text("Schedule",textAlign: TextAlign.center),
              selectedColor: Colors.deepOrangeAccent,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person,size: 23),
              title: Text("Profile",textAlign: TextAlign.center),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreen = [
    HomeScreenPage(), //home page screen,
    Text("Search"),
    Text("Tickets"),
    Text("Profile"),
  ];

  //variable and function

  var selecterdItem = 0;

  void onTappedItem(int index) {
    setState(() {
      selecterdItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Mwendokasi Tickets"),
      // ),
      body: Center(
        child: appScreen[selecterdItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selecterdItem,
          onTap: onTappedItem,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Color(0xFF526400),
          // showSelectedLabels: false,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home_filled),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.search),
                label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_rounded),
                activeIcon: Icon(Icons.airplane_ticket),
                label: "tickets"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3_sharp),
                activeIcon: Icon(Icons.person_2_rounded),
                label: "profile"),
          ]),
    );
  }
}

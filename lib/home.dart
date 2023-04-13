import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'search_paper_plane.dart';
import 'navigation_text.dart';
import 'list_card.dart';
import 'bottom_navigation.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      debugShowCheckedModeBanner: false,
    );
  }
}

class WidgetHomeState extends StatefulWidget {
  const WidgetHomeState({super.key});

  @override
  State<WidgetHomeState> createState() => _WidgetHomeStateState();
}

class _WidgetHomeStateState extends State<WidgetHomeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4FF),
      body: Container(
          child: Column(children: [
        Container(
          color: Color.fromARGB(255, 255, 255, 255),
            child: Column(
          children: [
            WidgetNavbarBar(),
            SizedBox(
              height: 20,
            ),
            MyNavigationBar(),
            SizedBox(height: 10),
          ],
        )),
        MyCard()
      ])),
      //Bottom Navigation Bar
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //if center floating button klicked
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 74, 74, 79),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: CircularNotchedRectangle(),
        height: 65,
        notchMargin: 7,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  //if home button clicked
                },
                icon: SvgPicture.asset('image/Home-clicked.svg')),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset('image/Category.svg')),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset('image/Notification.svg')),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset('image/Profile.svg'))
          ],
        ),
      ),
    );
  }
}

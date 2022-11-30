
import 'package:date_me/pages/inbox.dart';
import 'package:date_me/pages/likes.dart';
import 'package:date_me/pages/myprofile.dart';
import 'package:date_me/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:date_me/pages/home.dart';
import '../components/styles.dart' as style;

class TabsExample extends StatefulWidget {
  const TabsExample({Key? key}) : super(key: key);
  static const String id = 'Tabs';

  @override
  _TabsExampleState createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          padding: const EdgeInsets.only(bottom: 20),
          labelColor: style.appColor,
          unselectedLabelColor: const Color.fromARGB(255, 185, 196, 207),
          indicatorColor: Colors.transparent,
          labelPadding: const EdgeInsets.symmetric(horizontal: 0),
          labelStyle: const TextStyle(
            fontFamily: 'regular',
            fontSize: 12,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(Icons.notifications,
                  color: _currentIndex == 0
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.favorite,
                  color: _currentIndex == 1
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.home,
                  color: _currentIndex == 2
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.message,
                  color: _currentIndex == 3
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.person,
                  color: _currentIndex == 4
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
          ],
        )),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Notifications(),
            Likes(),
            Home(),
            Inbox(),
            MyProfile(),
          ],
        ),
      ),
    );
  }
}

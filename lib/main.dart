
import 'package:date_me/pages/friend_profile.dart';
import 'package:date_me/pages/myprofile.dart';
import 'package:date_me/pages/verification.dart';
import 'package:flutter/material.dart';
import 'package:date_me/pages/login.dart';
import 'package:date_me/pages/welcome.dart';
import 'package:date_me/pages/home.dart';
import 'package:date_me/pages/tabs.dart';
import 'package:date_me/pages/profile.dart';
import 'package:date_me/pages/likes.dart';
import 'package:date_me/pages/inbox.dart';
import 'package:date_me/pages/notification.dart';
import 'package:date_me/pages/Filter.dart';
import 'package:date_me/pages/Setting.dart';
import 'package:date_me/pages/editProfile.dart';
import 'package:date_me/pages/chat.dart';
import 'package:flutter/services.dart';
import '../components/styles.dart' as style;

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const DateApp());
}

class DateApp extends StatelessWidget {
  const DateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "regular",
        primaryColor: style.appColor,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      initialRoute: Welcome.id,
      debugShowCheckedModeBanner: false,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Login.id: (context) => const Login(),
        Home.id: (context) => const Home(),
        TabsExample.id: (context) => const TabsExample(),
        Profile.id: (context) => const Profile(),
        Inbox.id: (context) => const Inbox(),
        Likes.id: (context) => const Likes(),
        Notifications.id: (context) => const Notifications(),
        Filter.id: (context) => const Filter(),
        Setting.id: (context) => const Setting(),
        EditProfile.id: (context) => const EditProfile(),
        Chat.id: (context) => const Chat(),
        FriendProfile.id: (context) => const FriendProfile(),
        Verification.id: (context) => const Verification(),
        MyProfile.id: (context) => const MyProfile(),
      },
    );
  }
}

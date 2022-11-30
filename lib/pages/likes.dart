
import 'package:date_me/pages/friend_profile.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

var height = AppBar().preferredSize.height;

class Likes extends StatefulWidget {
  static const String id = 'likes';

  const Likes({Key? key}) : super(key: key);

  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  int tabID = 1;
  List<String> users = [
    'assets/images/5.jpg',
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/1.jpg',
    'assets/images/3.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/1.jpg',
    'assets/images/3.jpg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Likes',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black87),
        elevation: 0,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: List.generate(users.length, (index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: bottomBorder(),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FriendProfile()));
                      },
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ClipOval(child: Image.asset(users[index])),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text('John Doe',
                                    style: TextStyle(
                                        fontFamily: "semi-bold", fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Text('like your profile send message',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                ),
                              ],
                            ),
                          )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('1d',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }

  bottomBorder() {
    return const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)));
  }
}

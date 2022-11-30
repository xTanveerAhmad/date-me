
import 'package:date_me/pages/chat.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Inbox extends StatefulWidget {
  static const String id = 'inbox';

  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  void initState() {
    super.initState();
  }

  List<String> users = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/1.jpg',
  ];

  final List _elements = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Messages',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black87),
        elevation: 0,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      child: ListView(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        children: _elements.map((e) {
          return _buildChatModule(context);
        }).toList(),
      ),
    );
  }

  Widget _buildChatModule(context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 2.0,
          ),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Chat()));
        },
        child: Row(
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/2.jpg'),
              radius: 25,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('John Doe', style: TextStyle(fontFamily: "semi-bold")),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Hello, this is testing',
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  decoration: buildIconButton(),
                  child: const Text('5',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "semi-bold",
                        fontSize: 12,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text('10 min',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  buildIconButton() {
    return const BoxDecoration(
        color: style.appColor,
        borderRadius: BorderRadius.all(Radius.circular(100)));
  }
}

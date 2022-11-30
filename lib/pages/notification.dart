
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Notifications extends StatefulWidget {
  static const String id = 'Notifications';

  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

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
          'Notifications',
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
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5),
              decoration: buildIconButton(),
              child: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('like first chat with her',
                      style: TextStyle(fontFamily: "semi-bold", fontSize: 16)),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('8.20 AM',
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  textButton() {
    return const TextStyle(
        color: Colors.white, fontFamily: 'semi-bold', fontSize: 12);
  }

  buildIconButton() {
    return const BoxDecoration(
        color: style.appColor,
        borderRadius: BorderRadius.all(Radius.circular(100)));
  }
}

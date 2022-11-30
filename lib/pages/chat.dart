
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Chat extends StatefulWidget {
  static const String id = 'Chat';

  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Item> messages = <Item>[
    const Item('left', 'Hello'),
    const Item('right', 'Hii'),
    const Item('left', 'Are you nearby ?'),
    const Item('right', 'Yes, I will be there in few Minutes'),
    const Item('left', 'Ok, I am waiting at vinmark store'),
    const Item(
        'right', 'Sorry, I am stuck in traffic. Please give me a moment.'),
    const Item('left', 'no dont come to date now'),
    const Item('right', 'why'),
    const Item('left', 'Are you nearby ?'),
    const Item('right', 'Yes, I will be there in few Minutes'),
    const Item('left', 'Ok, I am waiting at vinmark store'),
    const Item(
        'right', 'Sorry, I am stuck in traffic. Please give me a moment.'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black87),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Row(
          children: const <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/2.jpg'),
              radius: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'John Doe',
                style:
                    TextStyle(color: Colors.black87, fontFamily: "semi-bold"),
              ),
            ),
          ],
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: messages.map((Item msg) {
            return msg.side == 'left'
                ? Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery.of(context).size.width - 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/3.jpg'),
                          radius: 20,
                        ),
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Text(
                              msg.msg,
                              style: const TextStyle(
                                  fontSize: 16, fontFamily: "medium"),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        width: MediaQuery.of(context).size.width - 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: style.appColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Text(
                                  msg.msg,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: "medium"),
                                ),
                              ),
                            ),
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/4.jpg'),
                              radius: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
          }).toList(),
        ));
  }

  Widget _buildFooter() {
    return Container(
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Colors.black12))),
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
        child: Row(
          children: <Widget>[
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Type Here..'),
              ),
            ),
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    color: style.appColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                child: const Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.side, this.msg);
  final String side;
  final String msg;
}

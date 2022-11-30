
import 'package:date_me/pages/chat.dart';
import 'package:date_me/pages/filter.dart';
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';
import '../components/styles.dart' as style;

List<String> images = [
  "assets/images/user1.jpg",
  "assets/images/user2.jpg",
  "assets/images/user3.jpg",
  "assets/images/user4.jpg",
  "assets/images/user5.jpg",
  "assets/images/user6.jpg",
  "assets/images/user7.jpg",
  "assets/images/user8.jpg",
  "assets/images/user9.jpg",
  "assets/images/user10.jpg",
  "assets/images/user11.jpg",
];

List<Widget> cards = List.generate(
  images.length,
  (int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 23.0,
            spreadRadius: -13.0,
            color: Colors.black54,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.asset(
          images[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  },
);

class Home extends StatefulWidget {
  static const String id = 'home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TCardController _controller = TCardController();

  int _index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.black12),
              borderRadius: BorderRadius.circular(30)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Search for match',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Filter()));
            },
            icon: const Icon(
              Icons.filter_alt_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TCard(
              cards: cards,
              controller: _controller,
              onForward: (index, info) {
                _index = index;
                setState(() {});
              },
              onBack: (index, info) {
                _index = index;
                setState(() {});
              },
              onEnd: () {
                print('end');
              },
            ),
            const SizedBox(height: 20),
            _index != cards.length
                ? Container(
                    margin: const EdgeInsets.symmetric(vertical: 48.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            _controller.back();
                          },
                          heroTag: 'cancel',
                          backgroundColor: Colors.white,
                          child: const Icon(Icons.close,
                              color: style.appColor, size: 30),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 40.0)),
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Chat()));
                          },
                          heroTag: 'message',
                          backgroundColor: Colors.white,
                          child: const Icon(Icons.message_outlined,
                              color: style.appColor, size: 30),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 40.0)),
                        FloatingActionButton(
                          onPressed: () {
                            _controller.forward();
                          },
                          backgroundColor: Colors.white,
                          heroTag: 'like',
                          child: const Icon(Icons.favorite,
                              color: style.appColor, size: 30),
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: (const Text('Swiped')),
                  )
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [],
        ),
      ),
    );
  }
}

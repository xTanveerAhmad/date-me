
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class FriendProfile extends StatefulWidget {
  static const String id = 'FriendProfile';

  const FriendProfile({Key? key}) : super(key: key);

  @override
  _FriendProfileState createState() => _FriendProfileState();
}

class _FriendProfileState extends State<FriendProfile> {
  List<String> images = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
  ];
  // double deviceWidth;
  int tabID = 1;
  bool val1 = true;
  bool val2 = true;

  @override
  Widget build(BuildContext context) {
    // deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildCarousel(),
          _hotelDesc(),
        ],
      ),
    );
  }

  Widget _buildCarousel() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/mobile.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
            child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: const Icon(Icons.chevron_left, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.favorite_border,
                          color: Colors.white),
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.share, color: Colors.white),
                      onPressed: () {}),
                ],
              ),
            ],
          ),
        )),
      ],
    );
  }

  Widget _hotelDesc() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'John Doe ',
                        style: TextStyle(fontSize: 22, fontFamily: "bold"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Florida, USA',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: "medium")),
                      ),
                    ],
                  )),
              Column(
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: buildIconButton(),
                    child: const Text('23 years',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "semi-bold",
                          fontSize: 12,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('1 km away',
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
          Icon(Icons.school, color: Colors.grey),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Flutter Developer",
              style: TextStyle(
                  fontSize: 16, color: Colors.grey, fontFamily: "medium"),
            ),
          )
            ],
          ),
          Row(
            children: const [
          Icon(Icons.category_outlined, color: Colors.grey),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Music, Traveling, Netflix",
              style: TextStyle(
                  fontSize: 16, color: Colors.grey, fontFamily: "medium"),
            ),
          )
            ],
          ),
          const SizedBox(height: 16),
          const InkWell(
            child: Text(
              'About',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
              'Hello everyone, this is john and this is details for testing. this is about dummy details. Vivera quies vivamu mi in turple. Sit Bandiya dofa cras semper phasellus sed ulthrieds. no where over the horiiszon. this is dummy text.',
              style: TextStyle(
                  fontSize: 14, color: Colors.grey, fontFamily: "medium")),
          Container(
            margin: const EdgeInsets.only(top: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Gender',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Text(
                        'Female',
                        style: TextStyle(
                          color: style.appColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildIconButton() {
    return const BoxDecoration(
        color: style.appColor,
        borderRadius: BorderRadius.all(Radius.circular(30)));
  }
}

class Item {
  const Item(this.name, this.icn);
  final IconData icn;
  final String name;
}

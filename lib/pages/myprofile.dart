/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:date_me/pages/EditProfile.dart';
import 'package:date_me/pages/setting.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class MyProfile extends StatefulWidget {
  static const String id = 'MyProfile';

  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
  bool isShare = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _buildCarousel(),
            _ProfileDesc(),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 450,
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
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        )),
        Positioned(
            bottom: 10,
            left: 16,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Setting()));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: const Icon(
                    Icons.settings_outlined,
                    color: style.appColor,
                  ),
                ),
              ),
            )),
        Positioned(
            bottom: 10,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new EditProfile()));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    "Edit info",
                    style: TextStyle(
                        fontSize: 16,
                        color: style.appColor,
                        fontFamily: "medium"),
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Widget _ProfileDesc() {
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
                  child: Container(
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
                ),
              )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: buildIconButton(),
                child: const Text('23 years',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "semi-bold",
                      fontSize: 12,
                    )),
              )
            ],
          ),
          const SizedBox(height: 16),
          Container(
              child: Row(
            children: [
              const Icon(Icons.school, color: Colors.grey),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontSize: 16, color: Colors.grey, fontFamily: "medium"),
                ),
              )
            ],
          )),
          Container(
              child: Row(
            children: [
              const Icon(Icons.category_outlined, color: Colors.grey),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Music, Traveling, Netflix",
                  style: TextStyle(
                      fontSize: 16, color: Colors.grey, fontFamily: "medium"),
                ),
              )
            ],
          )),
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
                    children: [
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
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  child: const Text("Show my age",
                      style: TextStyle(
                          fontFamily: "semi-bold",
                          fontSize: 16,
                          color: Colors.black87)),
                )),
                Switch(
                  activeColor: style.appColor,
                  value: isShare,
                  onChanged: (value) {
                    setState(() {
                      isShare = value;
                      print(isShare);
                    });
                  },
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


import 'package:flutter/material.dart';
import 'package:date_me/pages/login.dart';
import '../components/styles.dart' as style;

class Welcome extends StatefulWidget {
  static const String id = 'welcome';

  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/wel.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  'Welcome to',
                  style: TextStyle(fontFamily: "bold", fontSize: 26),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  'Logo',
                  style: TextStyle(
                      fontFamily: "bold", color: style.appColor, fontSize: 34),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(30),
                child: ElevatedButton.icon(
                    onPressed: () {},
                    style: style.FacebookButton(),
                    icon: const Icon(Icons.facebook),
                    label: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Continue with Facebook',
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    style: style.BorderedButton(),
                    icon: const Icon(Icons.phone),
                    label: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Continue with phone',
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

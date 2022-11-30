/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:date_me/pages/verification.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Login extends StatefulWidget {
  static const String id = 'login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              size: 30,
            ),
          ),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  'Continue with phone',
                  style: TextStyle(
                      fontFamily: "bold", color: style.appColor, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text(
                  'Please enter your country & your mobile number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "medium",
                      color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(50)),
                    prefix: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/india.png'),
                        radius: 10,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: style.appColor),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Verification()));
                    },
                    style: style.FillButton(),
                    icon: const Icon(Icons.phone),
                    label: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Send code',
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}


import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Setting extends StatefulWidget {
  static const String id = 'Setting';

  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isShow = false;
  bool isShare = false;
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
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Setting',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black87),
        elevation: 0,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildGreyLabel('Personal Details'),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.mail,
                        color: style.appColor,
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text("admin@initappz.com",
                            style: TextStyle(
                                fontFamily: "semi-bold",
                                fontSize: 16,
                                color: Colors.black87)),
                      )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.phone,
                        color: style.appColor,
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text("9876543210",
                            style: TextStyle(
                                fontFamily: "semi-bold",
                                fontSize: 16,
                                color: Colors.black87)),
                      )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.lock,
                        color: style.appColor,
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text("Change Password",
                            style: TextStyle(
                                fontFamily: "semi-bold",
                                fontSize: 16,
                                color: Colors.black87)),
                      )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _buildGreyLabel('Connected Account'),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.facebook,
                    color: style.appColor,
                  ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text("Facebook",
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
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.facebook,
                    color: style.appColor,
                  ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text("Instagram",
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
      ),
    );
  }

  myBoxDecoration() {
    return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)));
  }

  Widget _buildGreyLabel(text) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        '$text',
        style: const TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }

  textButton() {
    return const TextStyle(
        color: Colors.black87, fontFamily: 'semi-bold', fontSize: 12);
  }
}

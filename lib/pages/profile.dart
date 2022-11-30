
import 'package:date_me/pages/tabs.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Profile extends StatefulWidget {
  static const String id = 'profile';

  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int segmentedControlValue = 0;

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
          'Profile Setup',
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
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/2.jpg'),
                      radius: 70,
                    ),
                  ),
                  Positioned(
                      bottom: 5,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(100),
                            ),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: const Icon(Icons.camera_alt, size: 16),
                      )),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('John Doe',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Name',
                  style: TextStyle(fontFamily: "semi-bold", fontSize: 15)),
              TextField(
                decoration: style.simpleInput('Enter Name'),
              ),
              const SizedBox(height: 25),
              const Text('Date of Birth',
                  style: TextStyle(fontFamily: "semi-bold", fontSize: 15)),
              TextField(
                decoration: style.simpleInput('dd/mm/yyyy'),
              ),
              const SizedBox(height: 25),
              const Text('Gender',
                  style: TextStyle(fontFamily: "semi-bold", fontSize: 15)),
              const SizedBox(height: 25),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: status ? null : disableButton,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: style.appColor,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(color: style.appColor, width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text("Male"),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: status == false ? null : enableButton,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: style.appColor,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(color: style.appColor, width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text("female"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text('Preference of Interest',
                  style: TextStyle(fontFamily: "semi-bold", fontSize: 15)),
              const SizedBox(height: 25),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: status ? null : disableButton,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: style.appColor,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(color: style.appColor, width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text("Male"),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: status == false ? null : enableButton,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: style.appColor,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(color: style.appColor, width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text("female"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        TabsExample.id, (route) => false);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const TabsExample()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: style.appColor,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  bool status = false;

  disableButton() {
    setState(() {
      status = true;
    });
  }

  enableButton() {
    setState(() {
      status = false;
    });
  }

  iconButtonText() {
    return const TextStyle(fontFamily: "regular", color: Colors.grey);
  }
}

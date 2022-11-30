
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class EditProfile extends StatefulWidget {
  static const String id = 'EditProfile';

  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isSmartPhotos = false;
  bool isShare = false;
  RangeValues distance = const RangeValues(40, 80);
  RangeValues age = const RangeValues(40, 80);
  int selectGender = 1;
  String dropdownValue = 'Men';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
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
          'Edit Profile',
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/2.jpg'),
                          radius: 70,
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
                                  border: Border.all(
                                      width: 3, color: Colors.white)),
                              child: const Icon(Icons.camera_alt, size: 16),
                            )),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('John Doe',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20)),
                    ),
                  ],
                ),
              ),
              _buildBoldFont('About You'),
              TextField(
                maxLines: 4,
                decoration: inputFieldDecoration('Bio'),
              ),
              _buildBoldFont('Name'),
              TextField(
                decoration: inputFieldDecoration('Enter Name'),
              ),
              _buildBoldFont('Date of birth'),
              TextField(
                decoration: inputFieldDecoration('Enter Date of birth'),
              ),
              _buildBoldFont('Location'),
              TextField(
                decoration: inputFieldDecoration('Enter CIty'),
              ),
              _buildBoldFont('Gender'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('I Am'),
                    Center(
                      child: _buildSelect(),
                    ),
                  ],
                ),
              ),
              _buildBoldFont('Other'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('Don \'t Show My Age',
                        style: TextStyle(fontSize: 16)),
                    Switch(
                      value: isSmartPhotos,
                      activeColor: style.appColor,
                      onChanged: (value) {
                        setState(() {
                          isSmartPhotos = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('Make My Distance Invisible',
                        style: TextStyle(fontSize: 16)),
                    Switch(
                      value: isSmartPhotos,
                      activeColor: style.appColor,
                      onChanged: (value) {
                        setState(() {
                          isSmartPhotos = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSelect() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.black87),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Men', 'Woman', 'Other']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
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

  Widget _buildBoldFont(text) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        '$text',
        style: const TextStyle(
            color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  inputFieldDecoration(text) {
    return InputDecoration(
        hintText: '$text',
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none);
  }

  textButton() {
    return const TextStyle(
        color: Colors.white, fontFamily: 'semi-bold', fontSize: 12);
  }
}

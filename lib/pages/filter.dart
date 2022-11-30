
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Filter extends StatefulWidget {
  static const String id = 'Filter';

  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isShow = false;
  bool isShare = false;
  RangeValues distance = const RangeValues(40, 80);
  RangeValues age = const RangeValues(40, 80);
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
          'Filter',
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
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text('Location'),
                  Icon(
                    Icons.location_on,
                    color: style.appColor,
                  ),
                ],
              ),
            ),
            _buildGreyLabel(
                'Change your location to see dating members in other cities'),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 16),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Intrested In', style: TextStyle(color: style.appColor)),
                  Center(
                    child: _buildSelect(),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: myBoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text('Maximum Distance',
                        style: TextStyle(color: style.appColor)),
                  ),
                  RangeSlider(
                    values: distance,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    activeColor: style.appColor,
                    inactiveColor: Colors.grey[300],
                    labels: RangeLabels(
                      distance.start.round().toString(),
                      distance.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        distance = values;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: myBoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text('Age Range',
                        style: TextStyle(color: style.appColor)),
                  ),
                  RangeSlider(
                    values: age,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    activeColor: style.appColor,
                    inactiveColor: Colors.grey[300],
                    labels: RangeLabels(
                      age.start.round().toString(),
                      age.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        age = values;
                      });
                    },
                  )
                ],
              ),
            ),
            _buildGreyLabel(
                'Sharing your social content will greatly increase your chances of receiving messages!'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Match Sound'),
                  Switch(
                    activeColor: style.appColor,
                    value: isShare,
                    onChanged: (value) {
                      setState(() {
                        isShare = value;
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
        color: Colors.white, fontFamily: 'semi-bold', fontSize: 12);
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selected = 0;
  List<IconData> icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.motorcycle,
  ];

  Widget buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = index;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: _selected == index
                ? Theme.of(context).accentColor
                : Color(0xffE7EBEE),
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          icons[index],
          size: 25,
          color: _selected == index
              ? Theme.of(context).primaryColor
              : Color(0xffb4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 30),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 120),
              child: Text(
                "What you would like to find?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20,
            ),
            DestinationCarousel()
          ],
        ),
      ),
    );
  }
}

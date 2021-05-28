import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  const DestinationScreen({Key key, this.destination}) : super(key: key);

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.black26,
                        blurRadius: 6)
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                    child: Image.asset(
                      widget.destination.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        FontAwesomeIcons.arrowLeft,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.search,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          FontAwesomeIcons.sortAmountDown,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

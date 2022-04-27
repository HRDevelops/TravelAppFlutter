import 'package:flutter/material.dart';
import 'package:travelapp/placeWidget.dart';
import 'package:travelapp/ssPlace.dart';

import 'activityImage.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 600,
              child: SSPlace(),
            ),
          ],
        ),
        // child: ListView(
        //   physics: BouncingScrollPhysics(),
        //   children: [
        //     Container(
        //       height: 700,
        //       // width: 600,
        //       child: SSPlace(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

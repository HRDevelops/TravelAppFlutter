import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:travelapp/constants.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/kIndicator.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: kTTColor,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              CircleTabIndicator(color: Colors.white, radius: 4);
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.explore_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.star_outlined,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.star_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    LineIcons.userCheck,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    LineIcons.user,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ]),
      ),
    );
  }
}

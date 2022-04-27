import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travelapp/bottomBar.dart';
import 'package:travelapp/secondScreen.dart';
import 'package:travelapp/smallCard.dart';
import 'kIndicator.dart';
import 'constants.dart';
import 'placeWidget.dart';
import 'smallCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  List images = ['travel0.jpg', "travel1.jpg", "travel2.jpg", "travel3.jpg"];
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    int _activeIndex = 0;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              //height: 57,
              //width: 57,
              margin: EdgeInsets.only(left: 28, right: 28, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // height: 37,
                    // width: 37,
                    // color: Color(0x080a0928),
                    //padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0x080a0928)),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Text("Discover"),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0x080a0928),
                      ),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search))),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              // margin: const EdgeInsets.only(left: 22, right: 30, top: 22),
              //padding: const EdgeInsets.symmetric(horizontal: 22),
              child: TabBar(
                  controller: _tabController,
                  labelColor: kTTColor,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                  indicator: CircleTabIndicator(color: kTTColor, radius: 4),
                  tabs: [
                    Tab(
                      child: Text(
                        "Indonesia",
                      ),
                    ),
                    Tab(
                      child: Text("Thailand"),
                    ),
                    Tab(
                      child: Text("China"),
                    ),
                    Tab(
                      child: Text("Vitenam"),
                    ),
                  ]),
            ),
            Container(
              height: 230,
              width: 200,
              child: TabBarView(controller: _tabController, children: [
                Place(imageName: '1'),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SecondScreen())));
                    },
                    child: Place(imageName: '2')),
                Place(imageName: "3"),
                Place(imageName: 'asv'),
              ]),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.0,
                  ),
                  child: Text(
                    "Top Destinations",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 30.0,
                  ),
                  child: Text(
                    "View All",
                    style: TextStyle(color: kTTColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 90,
              width: 210,
              child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, right: 2),
                          child: SmallCard1(
                              imgNm: "Bandung",
                              plcTitle: "Bandung",
                              plcDesc: "West Java"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 2),
                          child: SmallCard1(
                              imgNm: "lombok",
                              plcTitle: "Lombok",
                              plcDesc: "NTM"),
                        ),
                      ],
                    );
                  }),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Container(
                height: 80,
                width: 300,
                margin: EdgeInsets.only(left: 40, top: 40, bottom: 5),
                child: BottomBar()),
            //////////
            ///
          ],
        ),
      ),
    );
  }
}

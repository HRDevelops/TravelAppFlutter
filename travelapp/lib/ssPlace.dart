import 'package:flutter/material.dart';
import 'package:travelapp/constants.dart';

import 'activityImage.dart';

class SSPlace extends StatelessWidget {
  const SSPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      //color: Colors.blue,
      child: Expanded(
        child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 400,
                //color: Colors.red,
                margin: EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 20.0,
                      child: Container(
                        height: 600,
                        width: 600,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 500,
                          height: 150,
                          margin: EdgeInsets.only(top: 300),
                          padding: EdgeInsets.all(50),
                          child: Text(
                              "                   Also known as the Land of Goats, Bali appeals through its\n                   sheer natural beauty of looming volcanoes and lush\n                   terraced rice fields that exude peace.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                image: AssetImage('images/travel1.jpg'),
                                height: 300,
                                width: 600,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 15,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.end,
                              //crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color:
                                          Colors.transparent.withOpacity(0.2)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image(
                                        image:
                                            AssetImage('images/gallery.png')),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color:
                                          Colors.transparent.withOpacity(0.2)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "4,7",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text("Bali Island",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text("Indonesia",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16)),
                                ],
                              ))
                        ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 400),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20.0,
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
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(25, 450, 0, 0),
                        height: 220,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ActivityImage(
                                iString: 'snorkling.jpg',
                                activity: 'Snorkling',
                                people: '3.7k',
                                col: Colors.teal),
                            ActivityImage(
                                iString: 'snorkling.jpg',
                                activity: 'Snorkling',
                                people: '3.7k',
                                col: Colors.red)
                          ],
                        )),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

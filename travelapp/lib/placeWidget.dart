import 'package:flutter/material.dart';
import 'package:travelapp/constants.dart';

// class Places extends StatelessWidget {
//   // const Places({
//   //   Key? key,
//   // }) : super(key: key);
//   int imageNum;

//   Places({required this.imageNum});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: 3,
//         itemBuilder: (_, index) {
//           return Container(
//             margin: const EdgeInsets.only(
//               left: 70,
//               right: 70,
//             ),
//             width: 200,
//             height: 300,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 image: DecorationImage(
//                     image: AssetImage('images/travel$imageNum.jpg'))),
//           );
//         });
//   }
// }

class Place extends StatelessWidget {
  // const Place({
  //   Key? key,
  // }) : super(key: key);
  String imageName;
  Place({required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      //color: Colors.blue,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 180,
              //color: Colors.red,
              margin: EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 20.0,
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bali Island",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.hotel,
                                      color: kTTColor,
                                    ),
                                    Text(
                                      "  Hotels",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20.0, left: 6),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert)),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage('images/travel1.jpg'),
                          height: 120,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 10,
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
                                  color: Colors.transparent.withOpacity(0.2)),
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
                    ]),
                  ),
                ],
              ),
            );
          }),
    );
  }
}










// child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: 3,
//           itemBuilder: (context, index) {
//             return Container(
//               width: 200,
//               height: 300,
//               margin: EdgeInsets.symmetric(horizontal: 40),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                   image: DecorationImage(
//                       image: AssetImage('images/travel$index.jpg'))),
//               child: Column(
//                 children: [
//                   Text("Bali"),
//                 ],
//               ),
//             );
//           }),

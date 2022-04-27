import 'package:flutter/material.dart';
import 'package:travelapp/constants.dart';

class SmallCard1 extends StatelessWidget {
  String imgNm;
  String plcTitle;
  String plcDesc;
  SmallCard1(
      {required this.imgNm, required this.plcTitle, required this.plcDesc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 200,
      child: ListView.builder(
          itemCount: 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Text("$plcTitle",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            Text(
                              "$plcDesc",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          image: AssetImage('images/$imgNm.jpg'),
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            );
          }),
    );
  }
}

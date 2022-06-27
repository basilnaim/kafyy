// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CoursScreen extends StatefulWidget {
  const CoursScreen({Key? key}) : super(key: key);

  @override
  State<CoursScreen> createState() => _CoursScreenState();
}


class _CoursScreenState extends State<CoursScreen> {
  var check = 0;
  var kind = 'requester';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                onTap: (index) {
                  // Tab index when user select it, it start from zero
                },
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    child: Text(
                      'الكورسات المسجلة',
                      style: TextStyle(
                          color: Color(0xFF335EF7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'الكورسات المتاحة',
                      style: TextStyle(
                          color: Color(0xFF335EF7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                'كورساتي',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: TabBarView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (_, index) => buildCardDetail(index),
                ),
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (_, index) => buildCardDetail1(index, context),
                ),
              ],
            )));
  }
}

Widget buildCardDetail(int index) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: InkWell(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (_) => DetailScreen(index: index,)));
      },
      child: Hero(
        tag: index,
        child: Material(
          type: MaterialType.transparency,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 0),
            child: Stack(
              overflow: Overflow.visible,
              // clipBehavior: ,
              children: [
                Card(
                  elevation: 0.3,
                  // shadowColor: Colors.black,
                  // // elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Positioned(
                          // left: -10,
                          // top: -10,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/Rectangle.png',
                              fit: BoxFit.fill,
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'تعلم الكتابة بخط الرقعة',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF9E9E9E),
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      '4.8',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF5B5B),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                width: 70,
                                height: 20,
                                child: Center(
                                  child: Text(
                                    'مشاهدة الان',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget buildCardDetail1(int index, BuildContext context) {
  double maxData = MediaQuery.of(context).size.width;

  List<Map<String, dynamic>> chartData = [
    {
      "units": 10,
      "color": Color(0xFF00B998),
    },
    {
      "units": 10,
      "color": Colors.grey[300],
    },
  ];
  return Directionality(
    textDirection: TextDirection.rtl,
    child: InkWell(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (_) => DetailScreen(index: index,)));
      },
      child: Hero(
        tag: index,
        child: Material(
          type: MaterialType.transparency,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 0),
            child: Stack(
              overflow: Overflow.visible,
              // clipBehavior: ,
              children: [
                Card(
                  elevation: 0.3,
                  // shadowColor: Colors.black,
                  // // elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Positioned(
                          // left: -10,
                          // top: -10,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/Rectangle.png',
                              fit: BoxFit.fill,
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'تعلم الكتابة بخط الرقعة',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF9E9E9E),
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      '4.8',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Row(

                                children: [
                                  for (int i = 0; i < chartData.length; i++)
                                    Container(
                                      
                                      width:110,
                                      height: 10,
                                      child: ColoredBox(
                                        color: chartData[i]["color"],
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

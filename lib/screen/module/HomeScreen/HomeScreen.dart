// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kafyy/screen/module/HomeScreen/details.dart';
import 'package:kafyy/screen/module/Profile/Help.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'assets/teacher.png',
                          height: 60,
                          width: 60,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 5, right: 10, left: 10),
                            child: Text(
                              'صباح الخير',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF9E9E9E),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 5, right: 10, left: 10),
                            child: Text(
                              'باسل نعيم',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(238, 238, 238, 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      suffixIconColor: Color(0xFF9E9E9E),
                      hintText: 'ابحث عن الكورس',
                      suffixIcon: Icon(Icons.filter_alt_outlined),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'المواد المختارة',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'مشاهدة الكل',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF335EF7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, index) => buildCardDetail(index,context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildCardDetail(int index,context) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => DetailsScreen()));
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
                              height: 120,
                              width: 120,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFEFF3FF),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                width: 70,
                                height: 20,
                                child: Center(
                                  child: Text(
                                    'اللغة العربية',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xFF335EF7)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'تعلم الكتابة بخط الرقعة',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        'assets/teacher.png',
                                        height: 30,
                                        width: 30,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 5, right: 10, left: 10),
                                      child: Text(
                                        'أكرم عبد الواحد',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xFF9E9E9E),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
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
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //     left: 5,
                                  //     right: 5,
                                  //   ),
                                  //   child: Container(
                                  //     height: 10,
                                  //     width: 1,
                                  //     color: Color(0xFF9E9E9E),
                                  //   ),
                                  // ),
                                  // Icon(
                                  //   Icons.people_alt_rounded,
                                  //   color: Color(0xFF9E9E9E),
                                  //   size: 30,
                                  // ),
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  // Padding(
                                  //   padding: EdgeInsets.only(top: 10),
                                  //   child: Text(
                                  //     '120',
                                  //     style: TextStyle(
                                  //         fontSize: 15,
                                  //         fontWeight: FontWeight.bold),
                                  //   ),
                                  // ),
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

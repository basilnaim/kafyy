// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,

        child: Column(
          children: [
            Image.asset(
              "assets/Rectangle.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
            Container(
              color: Colors.white.withOpacity(0.65),
              padding: const EdgeInsets.only(right: 35, left: 35),
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    "تعلم الكتابة بخط الرقعة",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "اللغة العربية",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF335EF7)),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xFF335EF7),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          '4.8',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.watch_later_outlined,
                        color: Color(0xFF335EF7),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          '5 أسابيع',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),
                  const Text(
                    "الكورس بواسطة",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
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
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, right: 10, left: 10),
                                  child: Text(
                                    'باسل نعيم',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, right: 10, left: 10),
                                  child: Text(
                                    'استاذ لغة عربية',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF9E9E9E),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const InkWell(
                          child: Icon(Icons.notifications),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  const Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad repellat nihil recusandae ducimus et eum iusto saepe obcaecati.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      _locationTag('25 Hotels'),
                      _locationTag('12 Parks'),
                    ],
                  ),
                  const SizedBox(height: 25),
              
                  FlatButton(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {},
                    height: 60,
                    minWidth: double.infinity,
                    child: const Text(
                      "Plan Your Next Trip Now",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     Expanded(
        //     flex: 2,
        //       child: Stack(
        //         alignment: Alignment.topRight,
        //         children: [
        //         Image.asset(
        //           "assets/Rectangle.png",
        //           fit: BoxFit.cover,
        //           width: double.infinity,
        //           // height: _size.height / 1.8,
        //         ),
        //         Container(
        //           height: double.infinity,
        //           decoration: const BoxDecoration(
        //             gradient: LinearGradient(
        //               begin: Alignment.topCenter,
        //               end: Alignment.bottomCenter,
        //               colors: [
        //                 Colors.transparent,
        //                 Colors.white,
        //               ],
        //               stops: [
        //                 0.4,
        //                 0.7,
        //               ],
        //             ),
        //           ),
        //         ),
        //         Container(
        //           padding: const EdgeInsets.only(left: 15, top: 45),
        //           child: IconButton(
        //             icon: const Icon(Icons.arrow_back),
        //             onPressed: () {
        //               Navigator.pop(context);
        //             },
        //           ),
        //         ),

        //       ]),
        //     ),
        //      Expanded(

        //        child: Container(
        //          color: Colors.white.withOpacity(0.65),
        //          padding: const EdgeInsets.only(right: 35,left: 35),
        //          width: double.infinity,
        //          child: Column(
        //           //  mainAxisSize: MainAxisSize.min,
        //           //  crossAxisAlignment: CrossAxisAlignment.start,
        //            children: [
        //              // ignore: prefer_const_constructors
        //              Text(
        //                "تعلم الكتابة بخط الرقعة",
        //                // ignore: prefer_const_constructors
        //                style: TextStyle(
        //                  fontSize: 25,
        //                  fontWeight: FontWeight.bold,
        //                ),
        //              ),
        //              const SizedBox(height: 5),
        //              const Text(
        //                "اللغة العربية",
        //                style: TextStyle(
        //                    fontSize: 14,
        //                    fontWeight: FontWeight.w500,
        //                    color: Color(0xFF335EF7)),
        //              ),
        //              Row(
        //                // ignore: prefer_const_literals_to_create_immutables
        //                children: [
        //                  const Icon(
        //                    Icons.star,
        //                    color: Color(0xFF335EF7),
        //                    size: 30,
        //                  ),
        //                  const SizedBox(
        //                    width: 5,
        //                  ),
        //                  const Padding(
        //                    padding: EdgeInsets.only(top: 10),
        //                    child: Text(
        //                      '4.8',
        //                      style: TextStyle(
        //                          fontSize: 15, fontWeight: FontWeight.bold),
        //                    ),
        //                  ),
        //                  const SizedBox(
        //                    width: 15,
        //                  ),
        //                  const Icon(
        //                    Icons.watch_later_outlined,
        //                    color: Color(0xFF335EF7),
        //                    size: 30,
        //                  ),
        //                  const SizedBox(
        //                    width: 5,
        //                  ),
        //                  const Padding(
        //                    padding: EdgeInsets.only(top: 10),
        //                    child: Text(
        //                      '5 أسابيع',
        //                      style: TextStyle(
        //                          fontSize: 15, fontWeight: FontWeight.bold),
        //                    ),
        //                  ),
        //                ],
        //              ),

        //              const SizedBox(height: 15),
        //              const Text(
        //                "الكورس بواسطة",
        //                style: TextStyle(
        //                    fontSize: 16,
        //                    fontWeight: FontWeight.w500,
        //                    color: Colors.grey),
        //              ),
        //               Padding(
        //        padding: const EdgeInsets.all(8.0),
        //        child: Row(
        //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //        children: [
        //          Row(
        //            children: [
        //              ClipRRect(
        //                borderRadius: BorderRadius.circular(30.0),
        //                child: Image.asset(
        //                  'assets/teacher.png',
        //                  height: 60,
        //                  width: 60,
        //                  fit: BoxFit.scaleDown,
        //                ),
        //              ),
        //              Column(
        //                // ignore: prefer_const_literals_to_create_immutables
        //                children: [

        //                  const Padding(
        //                    padding:
        //                        EdgeInsets.only(top: 5, right: 10, left: 10),
        //                    child: Text(
        //                      'باسل نعيم',
        //                      style: TextStyle(
        //                          fontSize: 18, fontWeight: FontWeight.bold),
        //                    ),
        //                  ),        const Padding(
        //                    padding:
        //                        EdgeInsets.only(top: 5, right: 10, left: 10),
        //                    child: Text(
        //                      'استاذ لغة عربية',
        //                      style: TextStyle(
        //                          fontSize: 15,
        //                          color: Color(0xFF9E9E9E),
        //                          fontWeight: FontWeight.bold),
        //                    ),
        //                  ),
        //                ],
        //              ),
        //            ],
        //          ),
        //          const InkWell(
        //            child: Icon(Icons.notifications),
        //          )
        //        ],
        //        ),
        //               ),
        //              const SizedBox(height: 15),

        //              const Text(
        //                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad repellat nihil recusandae ducimus et eum iusto saepe obcaecati.',
        //                style: TextStyle(
        //                  fontSize: 15,
        //                  color: Colors.black54,
        //                ),
        //              ),
        //              const SizedBox(height: 25),
        //              Row(
        //                children: [
        //                  _locationTag('25 Hotels'),
        //                  _locationTag('12 Parks'),
        //                ],
        //              ),
        //              const SizedBox(height: 25),
        //              Row(
        //                // ignore: prefer_const_literals_to_create_immutables
        //                children: [
        //                  const Icon(
        //                    Icons.map,
        //                    color: Colors.black26,
        //                  ),
        //                  const SizedBox(width: 10),
        //                  const Text(
        //                    "Turkey, Istanbul",
        //                    style: TextStyle(fontWeight: FontWeight.bold),
        //                  )
        //                ],
        //              ),
        //              const SizedBox(height: 30),
        //              FlatButton(
        //                color: Colors.blueAccent,
        //                shape: RoundedRectangleBorder(
        //                    borderRadius: BorderRadius.circular(25)),
        //                onPressed: () {},
        //                height: 60,
        //                minWidth: double.infinity,
        //                child: const Text(
        //                  "Plan Your Next Trip Now",
        //                  style: TextStyle(
        //                    fontSize: 16,
        //                    color: Colors.white,
        //                  ),
        //                ),
        //              )
        //            ],
        //          ),
        //        ),
        //      ),
        //   ],
        // ),
      ),
    );
  }

  _locationTag(String s) {
    return Container(
      child: Text(
        s,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 15,
        left: 15,
      ),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blueAccent[100]?.withOpacity(0.5),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kafyy/screen/login.dart';
import 'package:kafyy/screen/module/Profile/EditProfile.dart';
import 'package:kafyy/screen/module/Profile/Help.dart';
import 'package:kafyy/screen/module/Profile/Payment.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'البروفايل',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                              'assets/teacher.png',
                              height: 100,
                              width: 100,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/add.png'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, right: 10, left: 10),
                        child: Text(
                          'باسل نعيم',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => EditProfileScreen()));
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 15, right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.person_outline_outlined,
                                      color: Color(0xFF335EF7),
                                      size: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, left: 10, right: 10),
                                      child: Text(
                                        'تعديل البروفايل',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF7F7F7E),
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => PaymentScreen()));
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 15, right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.payments_outlined,
                                      color: Color(0xFF335EF7),
                                      size: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, left: 10, right: 10),
                                      child: Text(
                                        'طرق الدفع',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF7F7F7E),
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => HelpScreen()));
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 15, right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.help_outline_rounded,
                                      color: Color(0xFF335EF7),
                                      size: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, left: 10, right: 10),
                                      child: Text(
                                        'المساعدة والدعم الفني',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF7F7F7E),
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    CupertinoAlertDialog(
                                      title: Text(
                                        "تسجيل الخروج",
                                        style:
                                            TextStyle(color: Color(0xFFFF3030)),
                                      ),
                                      content: Text(
                                          "هل أنت متأكد أنك تريد تسجيل الخروج"),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      actions: <Widget>[
                                        CupertinoDialogAction(
                                          isDefaultAction: true,
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Login()));
                                          },
                                          child: Text('نعم، تسجيل الخروج'),
                                        ),
                                        CupertinoDialogAction(
                                          onPressed: () {
                                            Navigator.pop(
                                              context,
                                            );
                                          },
                                          child: Text("إلغاء"),
                                        )
                                      ],
                                    ));
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 15, right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.logout,
                                      color: Color(0xFFFF3030),
                                      size: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, left: 10, right: 10),
                                      child: Text(
                                        'تسجيل الخروج',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}

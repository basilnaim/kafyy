import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kafyy/screen/login.dart';

void main() {
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kafyy',
      theme:  ThemeData(
  primaryColor: Colors.white,
  primarySwatch: Colors.blue,
  accentColor: Colors.black,
  brightness: Brightness.light,
  indicatorColor: Colors.blue,
  fontFamily: 'Tajawal',
),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}

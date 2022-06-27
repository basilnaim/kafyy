// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kafyy/screen/Password/ForgotPassword.dart';
import 'package:kafyy/screen/Register/signUp.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            color: Colors.black,
          )
        ],
        title: Text(
          'إنشاء كلمة مرور جديدة',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Stack(
                          alignment: const Alignment(0, 0),
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 238, 238, 1),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                  textAlign: TextAlign.right,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.lock_outlined),
                                    suffixIconColor:
                                        Color.fromRGBO(238, 238, 238, 1),
                                    border: InputBorder.none,
                                    hintText: 'كلمة المرور',
                                     icon: Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.grey,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Stack(
                          alignment: const Alignment(0, 0),
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 238, 238, 1),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                  textAlign: TextAlign.right,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.lock_outlined),
                                      suffixIconColor:
                                          Color.fromRGBO(238, 238, 238, 1),
                                      border: InputBorder.none,
                                      hintText: 'تأكيد كلمة المرور',
                                      icon: Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.grey,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: RaisedButton(
                            color: Color.fromRGBO(51, 94, 247, 1),
                            onPressed: () {},
                            child: Text(
                              'تغيير كلمة المرور',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: BorderSide(color: Colors.green)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

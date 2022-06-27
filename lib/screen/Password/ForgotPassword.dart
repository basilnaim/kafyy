// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, avoid_unnecessary_containers

import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:kafyy/screen/Password/ChangePassword.dart';
import 'package:kafyy/screen/Register/signUp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String pricode = '+966';
  TextEditingController PhonenumberController = TextEditingController();

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
          'إستعادة كلمة المرور',
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 20, bottom: 20),
                  child: Image.asset(
                    'assets/forgot_password.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(238, 238, 238, 1),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 5),
                              child: TextFormField(
                                controller: PhonenumberController,

                                keyboardType: TextInputType.phone,
                                textAlign: TextAlign.right,
                                // textDirection: TextDirection.rtl,

                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Container(
                                    width: 120,
                                    child: CountryCodePicker(
                                      alignLeft: true,
                                      enabled: true,
                                      initialSelection: 'SA',
                                      onChanged: (d) {
                                        FocusScope.of(context).unfocus();

                                        pricode = d.dialCode.toString();
                                      },
                                      favorite: ['+966', 'SA'],
                                      hideMainText: false,
                                    ),
                                  ),
                                  hintText: '*******05',
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ),
                      ),
                     
               SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: RaisedButton(
                            color: Color.fromRGBO(51, 94, 247, 1),
                            onPressed: () {

                                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChangePassword()));
                            },
                            child: Text(
                              'إرسال',
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

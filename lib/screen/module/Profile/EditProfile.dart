// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:kafyy/screen/Password/ChangePassword.dart';
import 'package:kafyy/screen/Register/RegisterStep2.dart';
import 'package:kafyy/screen/Register/signUp.dart';
import 'package:kafyy/screen/module/Profile/ProfileScreen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String pricode = '+966';
  TextEditingController PhonenumberController = TextEditingController();
  String dropdownvalue = 'السعودية';

  // List of items in our dropdown menu
  var items = [
    'السعودية',
    'مصر',
    'فلسطين',
    'المغرب',
    'تركيا',
  ];
  String dropdownvalue1 = 'جدة';

  // List of items in our dropdown menu
  var items1 = [
    'جدة',
    'المدينة المنورة',
    'مكة',
  ];
  String dropdownvalue2 = 'المرحلة الدراسية';

  var items2 = [
    'المرحلة الدراسية',
    'المرحلة الإبتدائية  ( 6 سنوات )',
    'المرحلة المتوسطة  ( 3 سنوات )',
    'المرحلة الثانوية  ( 3 سنوات )',
    'المرحلة الجامعية',
    "كورسات",
  ];
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
          'تعديل البيانات',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(238, 238, 238, 1),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'الإسم كامل',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
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
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'اسم ولي الأمر',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ),
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
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
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
                                      hintText: 'رقم الجوال',
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          ),
                          // ),
                        ),
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
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
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
                                      hintText: 'رقم جوال ولي الأمر',
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
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
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'البريد الإلكتروني',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(238, 238, 238, 1),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      DropdownButton(
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                        underline: SizedBox(),
                                        value: dropdownvalue,
                                        iconEnabledColor: Colors.grey,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        itemHeight: 55,
                                        hint: Text(
                                          "                                                                             ",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        items: items.map((String items) {
                                          return DropdownMenuItem(
                                            value: items,
                                            child: Text(
                                              items,
                                              style: TextStyle(
                                                  fontFamily: 'Tajawal'),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownvalue = newValue!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(238, 238, 238, 1),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      DropdownButton(
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                        underline: SizedBox(),
                                        value: dropdownvalue1,
                                        iconEnabledColor: Colors.grey,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        itemHeight: 55,
                                        hint: Text(
                                          "                                                                             ",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        items: items1.map((String items1) {
                                          return DropdownMenuItem(
                                            value: items1,
                                            child: Text(
                                              items1,
                                              style: TextStyle(
                                                  fontFamily: 'Tajawal'),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue1) {
                                          setState(() {
                                            dropdownvalue1 = newValue1!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(238, 238, 238, 1),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      DropdownButton(
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                        underline: SizedBox(),
                                        value: dropdownvalue2,
                                        iconEnabledColor: Colors.grey,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        itemHeight: 55,
                                        hint: Text(
                                          "                                                                             ",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        items: items2.map((String items2) {
                                          return DropdownMenuItem(
                                            value: items2,
                                            child: Text(
                                              items2,
                                              style: TextStyle(
                                                  fontFamily: 'Tajawal'),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue2) {
                                          setState(() {
                                            dropdownvalue2 = newValue2!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                       
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
                              onPressed: () {
                                Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfileScreen(),));
                              },
                              child: Text(
                                'حفظ التغييرات',
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
      ),
    );
  }
}

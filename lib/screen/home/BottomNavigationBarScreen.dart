// import 'package:crystall_gem/constant/constant_color.dart';
// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:kafyy/screen/login.dart';
import 'package:kafyy/screen/module/Coursaty/CoursScreen.dart';
import 'package:kafyy/screen/module/HomeScreen/HomeScreen.dart';
import 'package:kafyy/screen/module/Massage/MessageScreen.dart';
import 'package:kafyy/screen/module/Profile/ProfileScreen.dart';

// import 'detail_screen.dart';
// import 'menu_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
    int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   HomeScreen(),
   CoursScreen(),
  //  MessageScreen(),
  ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home_outlined),
            label: 'الصفحة الرئيسية',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'كورساتي',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.messenger_outline_rounded),
          //   label: 'الرسائل',
          // ),
              BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'البروفايل',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF335EF7),
        onTap: _onItemTapped,
      ),          
      
      body: _widgetOptions[_selectedIndex],
        ),
      ),
    );
  }


//   Widget buildCard({
//     bool? active = false,
//     String? label = 'label',
//     IconData? iconData = Icons.ac_unit,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Card(
//             shadowColor: Colors.red,
//             elevation: 15,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//             color: active == true ? Colors.red : Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 width: 50,
//                 height: 50,
//                 child: Icon(
//                   Icons.ac_unit,
//                   color: active == true ? Colors.white : Colors.red,
//                   size: 35,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             '$label',
//             style:
//                 TextStyle(fontWeight: active == true ? FontWeight.bold : null),
//           )
//         ],
//       ),
//     );
//   }
}

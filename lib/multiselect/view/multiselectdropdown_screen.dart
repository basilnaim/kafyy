// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
// import 'package:kafyy/multiselect/controller/app_data_controller.dart';
// import 'package:kafyy/multiselect/model/subject_data_model.dart';
// import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet.dart';
// class MultiSelectDropDownScreen extends StatefulWidget {
//   MultiSelectDropDownScreen({Key? key}) : super(key: key);

//   @override
//   State<MultiSelectDropDownScreen> createState() =>
//       _MultiSelectDropDownScreenState();
// }

// class _MultiSelectDropDownScreenState extends State<MultiSelectDropDownScreen> {
//   final AppDataController controller = Get.put(AppDataController());

//   @override
//   Widget build(BuildContext context) {
//     List subjectData = [];

//     WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
//       controller.getSubjectData();
//     });

//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Column(
//         children: [
//           GetBuilder<AppDataController>(builder: (controller) {
//             return Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: MultiSelectDialogField(

//                 items: controller.dropDownData,
//                 title: const Text(
//                   "المواد الدراسية",
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 selectedColor: Colors.black,
//                 decoration: BoxDecoration(
//                   color: Color.fromRGBO(238, 238, 238, 1),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 buttonIcon: const Icon(
//                   Icons.arrow_drop_down,
//                   color: Colors.grey,
//                 ),
//                 buttonText: const Text(
//                   "المواد الدراسية",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 onConfirm: (results) {
//                   subjectData = [];
//                   for (var i = 0; i < results.length; i++) {
//                     SubjectModel data = results[i] as SubjectModel;
//                     print(data.subjectId);
//                     print(data.subjectName);
//                     subjectData.add(data.subjectId);
//                   }
//                   print("data $subjectData");

//                   //_selectedAnimals = results;
//                 },
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../Configuration/AppColors.dart';
import '../Elements/CustomText.dart';
import '../Widgets/CustomDropDownWidget.dart';

class CheckExamScreen extends StatefulWidget {
  const CheckExamScreen({super.key});

  @override
  State<CheckExamScreen> createState() => _CheckExamScreenState();
}

class _CheckExamScreenState extends State<CheckExamScreen> {
  final List<String> _department = ['Computer Science', 'Software Engineering', 'Artificial Intelligence'];
  final List<String> _shift = ['Morning', 'Evening'];
  final List<int> _semester = [1, 2, 3, 4, 5, 6, 7, 8];
  final List<String> _section = ['A', 'B', 'C', 'D'];
  String? _selectDepartment;
  String? _selectShift;
  int? _selectSemester;
  String? _selectSection;

  @override
  void initState() {
    super.initState();
    _selectDepartment = _department[0];
    _selectShift = _shift[0];
    _selectSemester = _semester[0];
    _selectSection = _section[0];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// Appbar
      appBar: AppBar(
        title: MyText(
          text: "Check Exam Details",
          fontWeight: FontWeight.bold,
          size: 22,
          color: AppColors.backgroundColor,
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: AppColors.backgroundColor),
        ),
      ),

      /// Body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            /// Title
            MyText(
              text: "Date Sheet",
              fontWeight: FontWeight.bold,
              size: 20,
            ),
            const SizedBox(height: 10),

            /// Select Department
            CustomDropdown(
              label: "Select Department",
              selectedValue: _selectDepartment,
              items: _department,
              onChanged: (val) =>
                  setState(() => _selectDepartment = val),
            ),
            const SizedBox(height: 10),

            /// Select Shift
            CustomDropdown(
              label: "Select Shift",
              selectedValue: _selectShift,
              items: _shift,
              onChanged: (val) => setState(() => _selectShift = val),
            ),
            const SizedBox(height: 10),

            /// Select Semester
            CustomDropdown(
              label: "Select Semester",
              selectedValue: _selectSemester,
              items: _semester,
              onChanged: (val) => setState(() => _selectSemester = val),
            ),
            const SizedBox(height: 10),

            /// Select Section
            CustomDropdown(
              label: "Select Section",
              selectedValue: _selectSection,
              items: _section,
              onChanged: (val) => setState(() => _selectSection = val),
            ),
          ],
        ),
      ),
    );
  }
}

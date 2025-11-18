import 'package:flutter/material.dart';
import 'package:fuuast_connect/Views/Elements/CustomContainer.dart';

import '../../Configuration/AppColors.dart';
import '../Elements/CustomText.dart';

class TimeTableScreen extends StatefulWidget {
  const TimeTableScreen({super.key});

  @override
  State<TimeTableScreen> createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
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
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: MyText(
          text: "Check TimeTable",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyText(
              text: "Welcome to UniTime",
              fontWeight: FontWeight.bold,
              size: 20,
            ),
            const SizedBox(height: 10),
            buildCustomDropdown(
              label: "Select Department",
              selectedValue: _selectDepartment,
              items: _department,
              onChanged: (val) =>
                  setState(() => _selectDepartment = _selectDepartment),
            ),
            const SizedBox(height: 10),

            buildCustomDropdown(
              label: "Select Shift",
              selectedValue: _selectShift,
              items: _shift,
              onChanged: (val) => setState(() => _selectShift = _selectShift),
            ),

            const SizedBox(height: 10),

            buildCustomDropdown(
              label: "Select Semester",
              selectedValue: _selectSemester,
              items: _semester,
              onChanged: (val) => setState(() => _selectSemester = _selectSemester),
            ),

            const SizedBox(height: 10),

            buildCustomDropdown(
              label: "Select Section",
              selectedValue: _selectSection,
              items: _section,
              onChanged: (val) => setState(() => _selectSection = _selectSection),
            ),

            MyContainer(),
          ],
        ),
      ),
    );
  }

  Widget buildCustomDropdown<T>({
    required String label,
    required T? selectedValue,
    required List<T> items,
    required ValueChanged<T?> onChanged,
    IconData icon = Icons.arrow_drop_down,
  }) {
    return MyContainer(
      width: MediaQuery.of(context).size.width * 0.8,
      child: DropdownButtonFormField<T>(
        value: selectedValue,
        decoration: InputDecoration(
          hintText: label,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
          ),
        ),
        items: items.map((T item) {
          return DropdownMenuItem<T>(
            value: item,
            child: Text(
              item.toString(),
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),
          );
        }).toList(),
        onChanged: onChanged,
        dropdownColor: Colors.white,
        icon: Icon(icon, color: AppColors.primaryColor, size: 30),
      ),
    );
  }
}

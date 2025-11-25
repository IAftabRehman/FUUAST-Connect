import 'package:flutter/material.dart';
import 'package:fuuast_connect/Views/Elements/CustomTextField.dart';
import 'package:fuuast_connect/Views/Widgets/CustomDropDownWidget.dart';

import '../../Configuration/AppColors.dart';
import '../../Models/CourseName.dart';
import '../Elements/CustomText.dart';

class CourseOrFacultyScreen extends StatefulWidget {
  const CourseOrFacultyScreen({super.key});

  @override
  State<CourseOrFacultyScreen> createState() => _CourseOrFacultyScreenState();
}

class _CourseOrFacultyScreenState extends State<CourseOrFacultyScreen> {
  /// Input Select Role where are you searching
  final List<String> _inputString = ["Input Course Name", "Input Teacher Name"];
  String? _selectInput;

  List<CourseName> courseName = [
    CourseName(courseName: "DLD"),
    CourseName(courseName: "CC"),
    CourseName(courseName: "COA"),
    CourseName(courseName: "AI"),
    CourseName(courseName: "AP"),
    CourseName(courseName: "HCI"),
    CourseName(courseName: "FYP"),
    CourseName(courseName: "DCCN"),
  ];

  final List<String> _courses = [
    "Mathematics",
    "Physics",
    "Computer Science",
    "English Literature",
    "History",
  ];
  final List<String> _teachers = [
    "Mr. Smith",
    "Mrs. Johnson",
    "Dr. Brown",
    "Ms. Davis",
    "Prof. Wilson",
  ];

  List<String> _searchResults = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectInput = "Select Input String";
  }

  void _onTextChanged(String value) {
    List<String> listToSearch =
    _selectInput == "Input Course Name" ? _courses : _teachers;

    setState(() {
      if (value.isEmpty) {
        _searchResults = [];
      } else {
        _searchResults = listToSearch
            .where((item) => item.toLowerCase().contains(value.toLowerCase()))
            .toList();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// AppBar
      appBar: AppBar(
        title: MyText(
          text: "Find Course or Faculty",
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
            Center(
              child: MyText(
                text: "Welcome to UniTime",
                fontWeight: FontWeight.bold,
                size: 20,
              ),
            ),
            const SizedBox(height: 10),

            CustomDropdown(
              label: "Select Input String",
              selectedValue: _selectInput,
              items: _inputString,
              onChanged: (val) => setState(() {
                _selectInput = val;
                _controller.clear();
                _searchResults.clear();
              }),
            ),

            const SizedBox(height: 10),

            if (_selectInput != "Select Input String")
              CustomTextField(
                controller: _controller,
                hintText: _selectInput == "Input Teacher Name"
                    ? "Enter Teacher Name"
                    : "Enter Course Name",
                onChanged: _onTextChanged,
              ),

            if (_searchResults.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: _searchResults.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_searchResults[index]),
                      onTap: () {
                        _controller.text = _searchResults[index];
                        setState(() {
                          _searchResults.clear();
                        });
                      },
                    );
                  },
                ),
              ),
            
            if(_controller.text.isNotEmpty)
              ElevatedButton(onPressed: (){}, child: MyText(text: "Enter"))
          ],
        ),
      ),
    );
  }
}


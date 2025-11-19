import 'package:flutter/material.dart';
import '../../Configuration/AppColors.dart';
import '../Elements/CustomContainer.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String label;
  final T? selectedValue;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final IconData icon;

  const CustomDropdown({
    super.key,
    required this.label,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    this.icon = Icons.arrow_drop_down,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButtonFormField<T>(
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

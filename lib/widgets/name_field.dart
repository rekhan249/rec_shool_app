import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameField extends StatelessWidget {
  const NameField({
    super.key,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Enter full name ',
        label: Text('User name',
            style: TextStyle(fontSize: 16.sp, color: Colors.black)),
        prefixIcon: const Icon(Icons.person, color: Colors.black),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(width: 3, color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(width: 3, color: Colors.grey)),
      ),
      validator: ((value) {
        if (value == null || value.isEmpty) {
          return 'Please enter full name';
        } else if (!RegExp(r"^[a-zA-Z]+(?:\s[a-zA-Z]+)+$").hasMatch(value)) {
          return 'Please enter valid name';
        }
        return null;
      }),
    );
  }
}

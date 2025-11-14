import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class CustomEmailTextField extends StatelessWidget {
  const CustomEmailTextField({
    super.key,
    required this.hinttext,
    required this.emailcontroller,
  });
  final String hinttext;
  final TextEditingController emailcontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Enter your email";
        } else if (!RegExp(
          StaticStrings.emailpattern.toString(),
        ).hasMatch(value)) {
          return "Enter a valid email address";
        } else {
          return null;
        }
      },

      controller: emailcontroller,
      decoration: InputDecoration(
        fillColor: AppColors.softbrandColor,
        filled: true,
        hintText: hinttext,
        enabled: true,

        // whenn the field is not focushed
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.shadow, width: 1),
        ),

        // when the field is focushed
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.shadow, width: 1),
        ),
      ),
    );
  }
}

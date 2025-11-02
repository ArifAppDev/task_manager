import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors/app_colors.dart';

class CustomTextfromFieldPassword extends StatelessWidget {
  const CustomTextfromFieldPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.softbrandColor,
        hintText: "2389892394",

        // when the text field is not focushed
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.shadow, width: 3),
        ),

        // when the text field is focushed
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.shadow, width: 3),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.shadow, width: 3),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors/app_colors.dart';

class CustomTextfromField extends StatelessWidget {
  const CustomTextfromField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: AppColors.softbrandColor,
        filled: true,
        hintText: "michelle.rivera@example.com",

        // whenn the field is not focushed
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.shadow, width: 3),
        ),

        // when the field is focushed
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

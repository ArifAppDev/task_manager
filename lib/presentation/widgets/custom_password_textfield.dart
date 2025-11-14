import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/instance_manager.dart';
import 'package:task_manager/core/general_controller/general_controller.dart';

import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({super.key, required this.passwordcontroller});

  final TextEditingController passwordcontroller;

  @override
  Widget build(BuildContext context) {
    var generatcontroller = Get.find<GeneralController>();

    return Obx(
      () => TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter your email";
          } else if (!RegExp(
            StaticStrings.passwordpattern.toString(),
          ).hasMatch(value)) {
            return "Enter a valid Password";
          }
          return null;
        },

        autovalidateMode: AutovalidateMode.onUserInteraction,

        controller: passwordcontroller,
        obscureText: generatcontroller.isSecure.value,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.softbrandColor,
          focusColor: AppColors.primaryColor,
          enabled: true,

          hintText: "Enter you password",
          suffixIcon: IconButton(
            onPressed: () {
              generatcontroller.isSecure.value =
                  !generatcontroller.isSecure.value;
            },
            icon: Icon(
              generatcontroller.isSecure.value
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: AppColors.slate,
            ),
          ),

          // when the text field is not focushed
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),

            borderSide: BorderSide(color: AppColors.shadow, width: 1),
          ),

          // when the text field is focushed
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: AppColors.shadow, width: 1),
          ),
        ),
      ),
    );
  }
}

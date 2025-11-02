import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors/app_colors.dart';
import 'package:task_manager/core/utils/static_string/static_strings.dart';
import 'package:task_manager/presentation/widgets/custom_textfrom_field.dart';
import 'package:task_manager/presentation/widgets/custom_textfrom_field_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  StaticStrings.welcomeBack,
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  StaticStrings.stayprodectivecontrol,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 22),

                Text(
                  StaticStrings.emailaddress,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 6),

                // custom Text from field
                CustomTextfromField(),
                SizedBox(height: 22),

                // custom text from fiels password
                CustomTextfromFieldPassword(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

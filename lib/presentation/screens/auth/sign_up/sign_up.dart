import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task_manager/core/routes/app_routes.dart';

import 'package:task_manager/presentation/widgets/custom_button_onboarding.dart';
import 'package:task_manager/presentation/widgets/custom_email_textfield.dart';
import 'package:task_manager/presentation/widgets/custom_password_textfield.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text(
                  StaticStrings.createyourAccount,
                  style: TextStyle(
                    fontSize: 27,
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

                SizedBox(height: 24),

                // Fast Name
                Text(
                  StaticStrings.firstname,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(height: 6),

                // First name
                CustomEmailTextField(
                  hinttext: 'e.g. Kristin ',
                  emailcontroller: emailController,
                ),
                SizedBox(height: 24),

                // last name
                Text(
                  StaticStrings.lastname,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(height: 6),

                CustomEmailTextField(
                  hinttext: 'e.g. Cooper',
                  emailcontroller: emailController,
                ),
                SizedBox(height: 24),

                // Email address
                Text(
                  StaticStrings.emailaddress,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(height: 6),

                CustomEmailTextField(
                  hinttext: 'e.g. kristin.cooper@example.com',
                  emailcontroller: emailController,
                ),
                SizedBox(height: 24),
                // Address
                Text(
                  StaticStrings.address,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(height: 6),
                CustomEmailTextField(
                  hinttext: 'e.g. 1234 Elm Street, Springfield, IL',
                  emailcontroller: emailController,
                ),
                SizedBox(height: 24),

                // Password
                Text(
                  StaticStrings.password,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(height: 6),

                CustomPasswordTextField(passwordcontroller: passController),
                SizedBox(height: 24),
                // Confirm Password
                Text(
                  StaticStrings.confirmPassword,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(height: 6),
                CustomPasswordTextField(passwordcontroller: passController),
                SizedBox(height: 6),

                Row(
                  children: [
                    SvgPicture.asset(
                      CustomIcons.checkbox,
                      colorFilter: const ColorFilter.mode(
                        AppColors.checkBoxIconColor,
                        BlendMode.srcIn,
                      ),
                      semanticsLabel: 'Red dash paths',
                    ),
                    SizedBox(width: 6),

                    Text(
                      StaticStrings.ihavaagreetermaPolicy,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.colorsGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: Divider(color: AppColors.slate, thickness: 2),
                    ),
                    SizedBox(width: 8),
                    Text(
                      StaticStrings.or,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryText,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Divider(color: AppColors.slate, thickness: 2),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                Row(
                  children: [
                    Text(
                      StaticStrings.alreadyhaveanAccount,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorsGrey,
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        StaticStrings.login,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                // ===========custom Button==========
                CustomButton(
                  title: 'Continue',
                  onTap: () {
                    Get.toNamed(AppRoutes.emailveriryscreen);
                  },
                ),

                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:task_manager/core/general_controller/general_controller.dart';
import 'package:task_manager/core/routes/app_routes.dart';

import 'package:task_manager/presentation/widgets/custom_button.dart';
import 'package:task_manager/presentation/widgets/custom_divider.dart';
import 'package:task_manager/presentation/widgets/custom_email_textfield.dart';

import 'package:task_manager/presentation/widgets/custom_password_textfield.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    var generalcontroller = Get.find<GeneralController>();
    return Scaffold(
      backgroundColor: AppColors.appbackround,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
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
                  CustomEmailTextField(
                    hinttext: 'michelle.rivera@example.com',
                    emailcontroller: emailController,
                  ),
                  SizedBox(height: 22),

                  // custom text from fiels password
                  CustomPasswordTextField(passwordcontroller: passController),

                  SizedBox(height: 15),

                  Row(
                    children: [
                      Obx(() {
                        return Checkbox(
                          value: generalcontroller.isCheck.value,
                          onChanged: (value) {
                            generalcontroller.isCheck.value = value!;
                          },
                        );
                      }),

                      SizedBox(width: 10),

                      Text(
                        "Remember me",
                        style: TextStyle(
                          color: AppColors.colorsGrey,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 33),

                  //================ custom Divider===============
                  CustomDivider(),
                  SizedBox(height: 33),

                  Row(
                    children: [
                      Text(
                        StaticStrings.donthaveanyAccount,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.colorsGrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.signupscreen);
                        },
                        child: Text(
                          StaticStrings.signUp,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),

                  //==================custom Button==================
                  CustomButton(
                    title: StaticStrings.login,
                    onTap: () {
                      // if (formkey.currentState!.validate()) {
                      //   // Both fields valid
                      //   log("Form valid");
                      //   log("Email: ${emailController.text}");
                      //   log("Password: ${passController.text}");
                      // } else {
                      //   // Either email or password invalid
                      //   log("Form invalid");
                      // }
                      Get.toNamed(AppRoutes.homescreen);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:task_manager/core/routes/app_routes.dart';
import 'package:task_manager/presentation/widgets/custom_button.dart';
import 'package:task_manager/presentation/widgets/custom_email_textfield.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class EmailVerifyScreen extends StatelessWidget {
  const EmailVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StaticStrings.verifyourEmail,
              style: TextStyle(
                fontSize: 30,
                color: AppColors.primaryText,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              StaticStrings.wewillsendaVerification,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.secondaryText,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 24),

            Text(
              StaticStrings.emailaddress,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryText,
              ),
            ),
            SizedBox(height: 6),
            // Emai address
            CustomEmailTextField(
              hinttext: 'michelle.rivera@example.com',
              emailcontroller: emailcontroller,
            ),
            SizedBox(height: 60),

            // Custom Button
            CustomButton(
              title: 'Send',
              onTap: () {
                Get.toNamed(AppRoutes.otpverifyscreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}

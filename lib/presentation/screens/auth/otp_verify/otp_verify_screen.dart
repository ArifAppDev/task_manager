import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task_manager/presentation/widgets/custom_button.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class OtpVeridyScreen extends StatelessWidget {
  const OtpVeridyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StaticStrings.six6digitcode,
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  StaticStrings.pleaseenterThecode,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 24),

                // =============== pin put =========================
                Pinput(
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.green[50],

                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                SizedBox(height: 60),

                // Custom Button
                CustomButton(title: 'Confirm', onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

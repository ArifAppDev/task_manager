import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task_manager/core/custom_assets/custom_images/custom_images.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),

        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            spreadRadius: 0,
            offset: Offset(1, 1),
            color: Colors.black12,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),

      child: Stack(
        children: [
          Positioned(
            top: -50,
            right: -120,

            child: Transform(
              transform: Matrix4.skew(40, 10),

              child: Image.asset(CustomImages.shape, height: 100, width: 120),
            ),
          ),

          Positioned(
            top: 10,
            left: -10,

            child: Transform(
              transform: Matrix4.skew(50, 10),

              child: Image.asset(CustomImages.shape, height: 100, width: 120),
            ),
          ),

          Positioned(
            top: 40,
            left: 30,

            child: Transform(
              transform: Matrix4.skew(30, 10),

              child: Image.asset(CustomImages.shape, height: 100, width: 120),
            ),
          ),

          Positioned(
            top: 20,
            left: 20,
            right: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(CustomIcons.taskicon),
                SizedBox(height: 16),
                Text(
                  "Design Landing Page Header",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.",
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

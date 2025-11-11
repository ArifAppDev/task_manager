import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screens/home/inner_widget/home_card/home_cart.dart';

import 'package:task_manager/presentation/screens/home/inner_widget/profile_section/profile_section.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //======================== profile section =============================
            ProfileSection(),

            SizedBox(height: 24),

            Text(
              StaticStrings.mytask,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.bgblack,
              ),
            ),
            SizedBox(height: 10),

            //==========home card===============
            HomeCard(),
          ],
        ),
      ),
    );
  }
}

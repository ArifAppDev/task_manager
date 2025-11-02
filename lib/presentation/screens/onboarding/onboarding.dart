import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_manager/core/routes/app_routes.dart';
import 'package:task_manager/core/utils/colors/app_colors.dart';
import 'package:task_manager/core/utils/static_string/static_strings.dart';
import 'package:task_manager/presentation/screens/onboarding/controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ========dependency Injection========
    final OnboardingController onboardingController =
        Get.find<OnboardingController>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.loginscreen);
                  },
                  child: Text(
                    StaticStrings.skip,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: PageView.builder(
                  controller: onboardingController.pageController,
                  itemCount: onboardingController.onboardingItem.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 30),
                        Image.asset(
                          onboardingController.onboardingItem[index]['img'],
                          height: 280,
                          width: 280,
                        ),

                        SizedBox(height: 42),

                        Text(
                          onboardingController.onboardingItem[index]['title'],
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          textAlign: TextAlign.center,
                          onboardingController
                              .onboardingItem[index]['description'],
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.secondaryText,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 42),

                        // smooth page indicator
                        Obx(
                          () => SmoothPageIndicator(
                            controller: onboardingController
                                .pageController, // PageController
                            count: onboardingController.onboardingItem.length,

                            effect: ExpandingDotsEffect(
                              dotHeight: 10,
                              activeDotColor: AppColors.primaryColor,
                              dotColor: AppColors.lightGrey,
                            ), // your preferred effect
                            onDotClicked: (index) {},
                          ),
                        ),

                        SizedBox(height: 200),
                        GestureDetector(
                          onTap: () {
                            if (onboardingController.pageController.page ==
                                onboardingController.onboardingItem.length -
                                    1) {
                              Get.toNamed(AppRoutes.loginscreen);
                            } else {
                              onboardingController.pageController.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: Container(
                            height: 44,
                            width: 358,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Next >",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

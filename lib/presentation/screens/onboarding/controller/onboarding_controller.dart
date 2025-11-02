import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:task_manager/core/custom_assets/custom_images/custom_images.dart';
import 'package:task_manager/core/utils/static_string/static_strings.dart';

class OnboardingController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }

  final PageController pageController = PageController();

  RxList onboardingItem = [
    {
      'img': CustomImages.onboarding1,
      'title': StaticStrings.manageEverything,
      'description': StaticStrings.createCatagorize,
    },

    {
      'img': CustomImages.onboarding2,
      'title': StaticStrings.focusonwhatsMatter,
      'description': StaticStrings.setpriorities,
    },

    {
      'img': CustomImages.onboarding3,
      'title': StaticStrings.visulizeProgress,
      'description': StaticStrings.monitorCompleted,
    },
  ].obs;
}

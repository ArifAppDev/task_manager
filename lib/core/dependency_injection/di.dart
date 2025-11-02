import 'package:get/get.dart';
import 'package:task_manager/presentation/screens/onboarding/controller/onboarding_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    // Onboarding
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}

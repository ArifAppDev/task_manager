import 'package:get/get.dart';
import 'package:task_manager/presentation/screens/login/login.dart';
import 'package:task_manager/presentation/screens/onboarding/onboarding.dart';
import 'package:task_manager/presentation/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashscreen = '/splashscreen';
  static const String onboardingscreen = '/onboardingscreen';
  static const String loginscreen = '/loginscreen';

  static List<GetPage> routes = [
    GetPage(name: splashscreen, page: () => SplashScreen()),
    GetPage(name: onboardingscreen, page: () => OnboardingScreen()),
    GetPage(name: loginscreen, page: () => LoginScreen()),
  ];
}

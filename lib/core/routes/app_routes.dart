import 'package:get/get.dart';
import 'package:task_manager/presentation/screens/auth/email_verify/email_veridy_screen.dart';
import 'package:task_manager/presentation/screens/auth/login/login_screen.dart';
import 'package:task_manager/presentation/screens/auth/new_password/new_password_screen.dart';
import 'package:task_manager/presentation/screens/auth/otp_verify/otp_verify_screen.dart';
import 'package:task_manager/presentation/screens/auth/sign_up/sign_up.dart';
import 'package:task_manager/presentation/screens/home/home_screen.dart';

import 'package:task_manager/presentation/screens/home/inner_widget/task_section/task_details_screen.dart';

import 'package:task_manager/presentation/screens/onboarding/onboarding.dart';
import 'package:task_manager/presentation/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashscreen = '/splashscreen';
  static const String onboardingscreen = '/onboardingscreen';

  // ================= Aucth Screen    =======================
  static const String loginscreen = '/loginscreen';
  static const String signupscreen = '/signupscreen';
  static const String emailveriryscreen = '/emailveriryscreen';
  static const String otpverifyscreen = '/otpverifyscreen';
  static const String newpassscreen = '/newpassscreen';

  static const String homescreen = '/homescreen';
  static const String taskdetailsscreen = '/taskdetailsscreen';

  static List<GetPage> routes = [
    GetPage(name: splashscreen, page: () => SplashScreen()),
    GetPage(name: onboardingscreen, page: () => OnboardingScreen()),
    // ================= Aucth Screen    =======================
    GetPage(name: loginscreen, page: () => LoginScreen()),
    GetPage(name: signupscreen, page: () => SignUpScreen()),
    GetPage(name: emailveriryscreen, page: () => EmailVerifyScreen()),
    GetPage(name: otpverifyscreen, page: () => OtpVeridyScreen()),
    GetPage(name: newpassscreen, page: () => NewPasswordScreen()),

    //========================
    GetPage(name: homescreen, page: () => HomeScreen()),
    GetPage(name: taskdetailsscreen, page: () => TaskDetailsScreen()),
  ];
}

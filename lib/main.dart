import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/core/dependency_injection/di.dart';
import 'package:task_manager/core/routes/app_routes.dart';

void main() {
  DependencyInjection().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashscreen,
      initialBinding: DependencyInjection(),
      getPages: AppRoutes.routes,
    );
  }
}

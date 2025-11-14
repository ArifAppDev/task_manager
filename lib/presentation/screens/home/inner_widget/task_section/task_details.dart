import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task_manager/presentation/screens/home/home_controller/home_controller.dart';
import 'package:task_manager/presentation/screens/home/inner_widget/task_details_card/task_details_card.dart';
import 'package:task_manager/presentation/widgets/custom_app_bar.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This allows access  to  the Controller's state and logic
    final HomeController homeController = Get.find<HomeController>();

    // get the pass index from argument

    final int index = Get.arguments['index'];
    // get the task specified index
    final task = homeController.taskDetails[index];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50),
            //=========== custom app bar ===============
            CustomAppBar(
              appbarName: 'Add Task ',
              onTap: () {
                Get.back();
              },
            ),

            SizedBox(height: 40),

            // task details card
            TaskDetailsCard(
              tasktitle: task['title'],
              taskdesctiption: task['des'],
            ),
          ],
        ),
      ),
    );
  }
}

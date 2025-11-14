import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<Map<String, dynamic>> taskDetails = [
    {
      'title': 'Design Landing Page Header',
      'des':
          'Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.',
    },
    {
      'title': 'Develop Onboarding Screens',
      'des':
          'Design a 3-step onboarding flow to introduce users to core app features using illustrations and concise text.',
    },
    {
      'title': 'Organize Task Card Components',
      'des':
          'Build reusable task card UI elements for listing, prioritizing, and editing individual tasks.',
    },
    {
      'title': 'Prepare Terms & Privacy Pages',
      'des':
          'Create UI layouts for Terms & Conditions and Privacy Policy using scrollable content and soft brand styling.',
    },
    {
      'title': 'Build Calendar View Layout',
      'des':
          'Design a visual calendar interface to display upcoming tasks and deadlines with status indicators.',
    },
  ].obs;

  // ============== remove task ===============
  void removeTask(int index) {
    if (index >= 0 && index < taskDetails.length) {
      taskDetails.removeAt(index);
    }
  }

  // ============ update task ================
  void updateTask(int index, String newtitle, String newdescription) {
    if (index >= 0 && index < taskDetails.length) {
      taskDetails[index] = {'title': newtitle, 'des': newdescription};
      taskDetails.refresh();
    }
  }
}

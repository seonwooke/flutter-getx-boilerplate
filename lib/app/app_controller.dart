import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController get instance => Get.find();

  final splashLoaded = false.obs;
  bool splashCompleted() => splashLoaded.value = true;

  final authLoaded = false.obs;
  bool appLoadCompleted() => authLoaded.value = true;

  final userModel = ''.obs;
}

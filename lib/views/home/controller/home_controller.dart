import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final loading = false.obs;
  bool start() => loading.value = true;
  bool done() => loading.value = false;
}

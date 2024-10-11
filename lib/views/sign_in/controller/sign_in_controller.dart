import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final loading = false.obs;
  bool start() => loading.value = true;
  bool done() => loading.value = false;
}

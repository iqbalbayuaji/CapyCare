import 'package:get/get.dart';

class LoginPageController extends GetxController {
  RxBool isPasswordVisible = false.obs;

  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
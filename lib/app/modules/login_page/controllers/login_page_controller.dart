import 'package:get/get.dart';

class LoginPageController extends GetxController {
  RxBool isPasswordVisible = false.obs;
  RxBool isPressed = false.obs;

  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }


}
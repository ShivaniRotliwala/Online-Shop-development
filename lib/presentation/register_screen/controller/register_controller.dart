import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  TextEditingController frameTwoController = TextEditingController();

  TextEditingController frameFiveController = TextEditingController();

  TextEditingController frameFourController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  RxBool checkbox = false.obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameTwoController.dispose();
    frameFiveController.dispose();
    frameFourController.dispose();
  }
}

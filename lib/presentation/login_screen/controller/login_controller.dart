import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/data/apiClient/api_client.dart';
import 'package:kannonn_s_application1/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

import '../../../data/apiClient/utilities.dart';
import '../../../data/models/user.dart';

class LoginController extends GetxController {
  TextEditingController frameTwoController = TextEditingController();

  TextEditingController frameFourController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  RxBool checkbox = false.obs;

  Rx<bool> isShowPassword = false.obs;

  Box box = Hive.box("login");
  ApiClient apiHelper = ApiClient();
  Utilities utilities = Utilities();
  LoginUser loginUser = LoginUser();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameTwoController.dispose();
    frameFourController.dispose();
  }

  Future<void> login({
    String? email,
    String? password,
  }) async {
    try {
      if (email!.isEmpty && password != null) {
        loginUser = LoginUser(
          email: null,
          password: null,
        );
        update();
      } else if (email.isNotEmpty && password != null) {
        loginUser = LoginUser(
          email: email,
          password: password,
        );
        update();
      }

      await box.put("isLoggedIn", true);
      var response = await apiHelper.login(loginUser.toJson());
      var res = jsonDecode(response.toString());
      if (res["token"].toString().isNotEmpty) {
        await box.put("jwt", res["token"]);
      }
      Get.offAllNamed(AppRoutes.homePage);
    } catch (e) {
      debugPrint("$e");
    }
  }
}

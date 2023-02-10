import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:kannonn_s_application1/data/apiClient/api_client.dart';

class Utilities {
  Box box = Hive.box("login");
  ApiClient apiHelper = ApiClient();

  // // Future<void> generateRandomToken() async {
  // //   try {
  // //     var response = await apiHelper.generateRandomToken();
  // //     var token = jsonDecode(response.toString());
  // //     if (token["token"] != null) {
  // //       await box.put("randomToken", token["token"]);
  // //     }
  // //   } catch (e) {
  // //     debugPrint("$e");
  // //   }
  // }

  Future<void> fetchCategories() async {
    try {
      var response = await apiHelper.getCategory();
      print(response);
      // if (response?.statusCode==200) {
      //   return
      //   await box.put("randomToken", token["token"]);
      // }
    } catch (e) {
      debugPrint("$e");
    }
  }
}

import 'package:dio/dio.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiClient {
  // Future<Response>? generateRandomToken() {
  //   try {
  //     return Dio().get(
  //       "${dotenv.env["URL"]}/token",
  //       options: Options(
  //         followRedirects: false,
  //         validateStatus: (status) {
  //           return status! < 500;
  //         },
  //       ),
  //     );
  //   } catch (e) {
  //     debugPrint("$e");
  //   }

  //   return null;
  // }

  Future<Response?> login(data) async {
    try {
      return await Dio().post(
        "${dotenv.env["URL"]}/auth/login",
        data: data,
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
    } catch (e) {
      debugPrint("$e");
    }

    return null;
  }

  Future<Response>? getCategory() {
    try {
      return Dio().get(
        "${dotenv.env["URL"]}/items/Category",
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
    } catch (e) {
      debugPrint("$e");
    }

    return null;
  }
}

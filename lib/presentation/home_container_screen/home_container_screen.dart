import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/presentation/home_page/home_page.dart';
import 'package:kannonn_s_application1/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Navigator(
            key: Get.nestedKey(1),
            initialRoute: AppRoutes.homePage,
            onGenerateRoute: (routeSetting) => GetPageRoute(
                page: () => getCurrentPage(routeSetting.name!),
                transition: Transition.noTransition)),
        bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        }));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}

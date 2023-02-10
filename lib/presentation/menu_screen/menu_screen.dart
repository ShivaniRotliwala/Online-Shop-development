import 'controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/widgets/custom_button.dart';

class MenuScreen extends GetWidget<MenuController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          padding: getPadding(
                              left: 30, top: 34, right: 30, bottom: 34),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1,
                                    height: getSize(80.00),
                                    width: getSize(80.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(40.00))),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Text("lbl_hello".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold16)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_john_deo".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterBold24Bluegray900)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(280.00),
                                    margin: getMargin(top: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray400)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtDescription();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(137.00),
                                        margin: getMargin(top: 16),
                                        child: Text("msg_home_shop_by_ca".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular16Bluegray700)))
                              ]))))
            ]),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 30, right: 38, bottom: 34),
                child: Row(children: [
                  CustomButton(
                      height: 60,
                      width: 280,
                      text: "lbl_sign_out".tr,
                      onTap: onTapSignout)
                ]))));
  }

  onTapTxtDescription() {
    Get.toNamed(AppRoutes.categoriesScreen);
  }

  onTapSignout() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}

import 'controller/success_controller.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/widgets/custom_button.dart';

class SuccessScreen extends GetWidget<SuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            body: Container(
                padding: getPadding(all: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(280.00),
                          padding: getPadding(
                              left: 20, top: 27, right: 20, bottom: 27),
                          decoration: AppDecoration.outlineBlack900191.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 2),
                                    color: ColorConstant.yellow800,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder40),
                                    child: Container(
                                        height: getSize(80.00),
                                        width: getSize(80.00),
                                        padding: getPadding(all: 15),
                                        decoration: AppDecoration.fillYellow800
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder40),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCheckmark,
                                              height: getSize(50.00),
                                              width: getSize(50.00),
                                              alignment: Alignment.center)
                                        ]))),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Text("lbl_success".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterBold24Bluegray700)),
                                Container(
                                    width: getHorizontalSize(213.00),
                                    margin: getMargin(top: 8),
                                    child: Text("msg_your_order_200431254".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray300)),
                                CustomButton(
                                    height: 60,
                                    width: 240,
                                    text: "msg_continue_shopping".tr,
                                    margin: getMargin(top: 19),
                                    onTap: onTapContinueshopping),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtGotoOrders();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 18),
                                        child: Text("lbl_go_to_orders".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterSemiBold16)))
                              ]))
                    ]))));
  }

  onTapContinueshopping() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapTxtGotoOrders() {
    Get.toNamed(AppRoutes.cartScreen);
  }
}

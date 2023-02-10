import 'controller/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:kannonn_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:kannonn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kannonn_s_application1/widgets/custom_button.dart';
import 'package:kannonn_s_application1/widgets/custom_radio_button.dart';

class CheckoutScreen extends GetWidget<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(152.00),
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(125.00),
                                    leadingWidth: 48,
                                    leading: AppbarImage(
                                        height: getSize(25.00),
                                        width: getSize(25.00),
                                        svgPath: ImageConstant.imgMenu,
                                        margin: getMargin(
                                            left: 23, top: 43, bottom: 56)),
                                    centerTitle: true,
                                    title: AppbarImage(
                                        height: getVerticalSize(29.00),
                                        width: getHorizontalSize(198.00),
                                        svgPath:
                                            ImageConstant.imgGroupYellow800),
                                    actions: [
                                      AppbarCircleimage(
                                          imagePath: ImageConstant.imgEllipse1,
                                          margin: getMargin(
                                              left: 22,
                                              top: 36,
                                              right: 22,
                                              bottom: 49))
                                    ],
                                    styleType: Style.bgFillBluegray900),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(left: 23, right: 22),
                                        decoration:
                                            AppDecoration.outlineBlack90019,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 17,
                                                      right: 18,
                                                      bottom: 17),
                                                  decoration: AppDecoration
                                                      .outlineGray100
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSearch,
                                                            height:
                                                                getSize(20.00),
                                                            width:
                                                                getSize(20.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                top: 3),
                                                            child: Text(
                                                                "msg_what_are_you_looking"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular14)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCamera,
                                                            height:
                                                                getSize(20.00),
                                                            width:
                                                                getSize(20.00),
                                                            onTap: () {
                                                              onTapImgCamera();
                                                            }),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgMicrophone,
                                                            height:
                                                                getSize(20.00),
                                                            width:
                                                                getSize(20.00),
                                                            margin: getMargin(
                                                                left: 10))
                                                      ]))
                                            ])))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  width: size.width,
                                  margin: getMargin(top: 29, bottom: 58),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_checkout".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold24Bluegray700),
                                        Container(
                                            width: getHorizontalSize(384.00),
                                            margin: getMargin(
                                                left: 23, top: 29, right: 22),
                                            padding: getPadding(
                                                left: 10,
                                                top: 19,
                                                right: 10,
                                                bottom: 19),
                                            decoration: AppDecoration
                                                .outlineBlack900191
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_name".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold16Bluegray300),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_john_deo".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular16Bluegray300)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: Text(
                                                          "msg_shipping_address"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16Bluegray300)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          364.00),
                                                      margin: getMargin(top: 8),
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 16,
                                                          right: 18,
                                                          bottom: 16),
                                                      decoration: AppDecoration
                                                          .outlineGray100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        299.00),
                                                                child: Text(
                                                                    "msg_plusonex_india_a"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16))
                                                          ]))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(384.00),
                                            margin: getMargin(
                                                left: 23, top: 20, right: 22),
                                            padding: getPadding(
                                                left: 10,
                                                top: 20,
                                                right: 10,
                                                bottom: 20),
                                            decoration: AppDecoration
                                                .outlineBlack900191
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: CustomRadioButton(
                                                          text:
                                                              "msg_cash_on_delivery"
                                                                  .tr,
                                                          iconSize: 18,
                                                          value:
                                                              "msg_cash_on_delivery"
                                                                  .tr,
                                                          groupValue: controller
                                                              .radioGroup.value,
                                                          margin:
                                                              getMargin(top: 2),
                                                          onChange: (value) {
                                                            controller
                                                                .radioGroup
                                                                .value = value;
                                                          })),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          364.00),
                                                      margin:
                                                          getMargin(top: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 11),
                                                      child: CustomRadioButton(
                                                          text:
                                                              "msg_credit_debit_car"
                                                                  .tr,
                                                          iconSize: 18,
                                                          value:
                                                              "msg_credit_debit_car"
                                                                  .tr,
                                                          groupValue: controller
                                                              .radioGroup1
                                                              .value,
                                                          margin: getMargin(
                                                              top: 11),
                                                          onChange: (value) {
                                                            controller
                                                                .radioGroup1
                                                                .value = value;
                                                          })),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          364.00),
                                                      margin:
                                                          getMargin(top: 11),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 12),
                                                      child: CustomRadioButton(
                                                          text:
                                                              "lbl_pay_via_upi"
                                                                  .tr,
                                                          iconSize: 18,
                                                          value:
                                                              "lbl_pay_via_upi"
                                                                  .tr,
                                                          groupValue: controller
                                                              .radioGroup2
                                                              .value,
                                                          margin: getMargin(
                                                              top: 12),
                                                          onChange: (value) {
                                                            controller
                                                                .radioGroup2
                                                                .value = value;
                                                          }))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(384.00),
                                            margin: getMargin(
                                                left: 24, top: 20, right: 22),
                                            padding: getPadding(
                                                left: 9,
                                                top: 17,
                                                right: 9,
                                                bottom: 17),
                                            decoration: AppDecoration
                                                .outlineBlack900191
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1, top: 1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "lbl_order_date"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold16Bluegray300)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_march_28_2023"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16Bluegray900))
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          364.00),
                                                      margin: getMargin(top: 8),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "lbl_delivery_date"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold16Bluegray300),
                                                            Text(
                                                                "lbl_march_31_2023"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular16Bluegray900)
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          364.00),
                                                      margin: getMargin(top: 8),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 8),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "lbl_total"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold16Bluegray300)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_5_800"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold16Yellow800))
                                                          ]))
                                                ])),
                                        Container(
                                            height: getVerticalSize(117.00),
                                            width: size.width,
                                            margin: getMargin(top: 30),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomButton(
                                                      height: 60,
                                                      width: 380,
                                                      text:
                                                          "lbl_place_order".tr,
                                                      onTap: onTapPlaceorder,
                                                      alignment:
                                                          Alignment.topCenter),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Card(
                                                          clipBehavior: Clip
                                                              .antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL30),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      70.00),
                                                              width: size.width,
                                                              padding:
                                                                  getPadding(
                                                                      left: 28,
                                                                      top: 18,
                                                                      right: 28,
                                                                      bottom:
                                                                          18),
                                                              decoration: AppDecoration
                                                                  .outlineBlack900192
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderTL30),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              CustomImageView(
                                                                                  svgPath: ImageConstant.imgHomeBlueGray300,
                                                                                  height: getSize(24.00),
                                                                                  width: getSize(24.00),
                                                                                  onTap: () {
                                                                                    onTapImgHome();
                                                                                  }),
                                                                              CustomImageView(svgPath: ImageConstant.imgUser, height: getSize(24.00), width: getSize(24.00), margin: getMargin(left: 90)),
                                                                              CustomImageView(svgPath: ImageConstant.imgNotification, height: getSize(24.00), width: getSize(24.00), margin: getMargin(left: 90)),
                                                                              CustomImageView(
                                                                                  svgPath: ImageConstant.imgCartYellow800,
                                                                                  height: getSize(24.00),
                                                                                  width: getSize(24.00),
                                                                                  margin: getMargin(left: 90),
                                                                                  onTap: () {
                                                                                    onTapImgCart();
                                                                                  })
                                                                            ])),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        child: Container(
                                                                            height:
                                                                                getSize(12.00),
                                                                            width: getSize(12.00),
                                                                            decoration: BoxDecoration(color: ColorConstant.redA200, borderRadius: BorderRadius.circular(getHorizontalSize(6.00))))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(right: 3),
                                                                            child: Text("lbl_3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10)))
                                                                  ]))))
                                                ]))
                                      ]))))
                    ]))));
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapPlaceorder() {
    Get.toNamed(AppRoutes.successScreen);
  }

  onTapImgHome() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapImgCart() {
    Get.toNamed(AppRoutes.cartScreen);
  }
}

import 'package:kannonn_s_application1/data/apiClient/utilities.dart';
import '../home_page/widgets/listrectangletwentyfive_item_widget.dart';
import '../home_page/widgets/listrectangletwentyfive_six_item_widget.dart';
import '../home_page/widgets/listrectangletwentyfive_three_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/listrectangletwentyfive_item_model.dart';
import 'models/listrectangletwentyfive_six_item_model.dart';
import 'models/listrectangletwentyfive_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:kannonn_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:kannonn_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));
  Utilities utilities = Utilities();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              height: getVerticalSize(330.00),
              width: size.width,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: getPadding(all: 22),
                        decoration: AppDecoration.fillBluegray900.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: getPadding(top: 160),
                                  child: Text("lbl_all_categories".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold24)),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 17, right: 3),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .blueGray700,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  68.00),
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 18,
                                                              right: 24,
                                                              bottom: 18),
                                                          decoration: AppDecoration
                                                              .fillBluegray700
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder20),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMobile,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_mobile".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12))
                                                ])),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .blueGray700,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  68.00),
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 18,
                                                              right: 24,
                                                              bottom: 18),
                                                          decoration: AppDecoration
                                                              .fillBluegray700
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder20),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMobile,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_fashion".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12))
                                                ])),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .blueGray700,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  68.00),
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 18,
                                                              right: 24,
                                                              bottom: 18),
                                                          decoration: AppDecoration
                                                              .fillBluegray700
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder20),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMobile,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text("lbl_home".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12))
                                                ])),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .blueGray700,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  68.00),
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 18,
                                                              right: 24,
                                                              bottom: 18),
                                                          decoration: AppDecoration
                                                              .fillBluegray700
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder20),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMobile,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_electronics".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12))
                                                ])),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  // utilities.fetchCategories();
                                                },
                                                child: Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color: ColorConstant
                                                        .blueGray700,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder20),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            56.00),
                                                        width:
                                                            getHorizontalSize(
                                                                68.00),
                                                        padding: getPadding(
                                                            left: 24,
                                                            top: 18,
                                                            right: 24,
                                                            bottom: 18),
                                                        decoration: AppDecoration
                                                            .fillBluegray700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder20),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgMobile,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ]))),
                                              ),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("lbl_toys".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12))
                                            ])
                                      ]))
                            ]))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: getVerticalSize(152.00),
                        width: size.width,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomAppBar(
                              height: getVerticalSize(125.00),
                              leadingWidth: 48,
                              leading: AppbarImage(
                                  onTap: onTapMenu,
                                  height: getSize(25.00),
                                  width: getSize(25.00),
                                  svgPath: ImageConstant.imgMenu,
                                  margin:
                                      getMargin(left: 23, top: 43, bottom: 56)),
                              centerTitle: true,
                              title: AppbarImage(
                                  height: getVerticalSize(29.00),
                                  width: getHorizontalSize(198.00),
                                  svgPath: ImageConstant.imgGroupYellow800),
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
                                  decoration: AppDecoration.outlineBlack90019,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 18,
                                                top: 20,
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
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10, top: 2),
                                                      child: Text(
                                                          "msg_what_are_you_looking"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCamera,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      onTap: () {
                                                        onTapImgCamera();
                                                      }),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMicrophone,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      margin:
                                                          getMargin(left: 10))
                                                ]))
                                      ])))
                        ])))
              ])),
          Flexible(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: getPadding(left: 22, top: 32),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(right: 23),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("msg_popular_products".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterBold24Bluegray900),
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 7),
                                          child: Text("lbl_view_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular16))
                                    ])),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: getVerticalSize(237.00),
                                    child: Obx(() => ListView.separated(
                                        padding: getPadding(left: 1, top: 7),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(14.00));
                                        },
                                        itemCount: controller
                                            .homeModelObj
                                            .value
                                            .listrectangletwentyfiveItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          ListrectangletwentyfiveItemModel
                                              model = controller
                                                      .homeModelObj
                                                      .value
                                                      .listrectangletwentyfiveItemList[
                                                  index];
                                          return ListrectangletwentyfiveItemWidget(
                                              model);
                                        })))),
                            Padding(
                                padding: getPadding(top: 28, right: 23),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_latest_mobiles".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterBold24Bluegray900),
                                      Padding(
                                          padding:
                                              getPadding(top: 5, bottom: 4),
                                          child: Text("lbl_view_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular16))
                                    ])),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: getVerticalSize(240.00),
                                    child: Obx(() => ListView.separated(
                                        padding: getPadding(left: 1, top: 10),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(14.00));
                                        },
                                        itemCount: controller
                                            .homeModelObj
                                            .value
                                            .listrectangletwentyfiveThreeItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          ListrectangletwentyfiveThreeItemModel
                                              model = controller
                                                      .homeModelObj
                                                      .value
                                                      .listrectangletwentyfiveThreeItemList[
                                                  index];
                                          return ListrectangletwentyfiveThreeItemWidget(
                                              model);
                                        })))),
                            Padding(
                                padding: getPadding(top: 28, right: 23),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_latest_fashion".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterBold24Bluegray900),
                                      Padding(
                                          padding:
                                              getPadding(top: 5, bottom: 4),
                                          child: Text("lbl_view_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular16))
                                    ])),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: getVerticalSize(240.00),
                                    child: Obx(() => ListView.separated(
                                        padding: getPadding(left: 1, top: 10),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(14.00));
                                        },
                                        itemCount: controller
                                            .homeModelObj
                                            .value
                                            .listrectangletwentyfiveSixItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          ListrectangletwentyfiveSixItemModel
                                              model = controller
                                                      .homeModelObj
                                                      .value
                                                      .listrectangletwentyfiveSixItemList[
                                                  index];
                                          return ListrectangletwentyfiveSixItemWidget(
                                              model);
                                        }))))
                          ]))))
        ]));
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapMenu() {
    Get.toNamed(AppRoutes.menuScreen);
  }
}

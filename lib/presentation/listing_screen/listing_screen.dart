import '../listing_screen/widgets/listing_item_widget.dart';
import 'controller/listing_controller.dart';
import 'models/listing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/presentation/home_page/home_page.dart';
import 'package:kannonn_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:kannonn_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:kannonn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kannonn_s_application1/widgets/custom_bottom_bar.dart';
import 'package:kannonn_s_application1/widgets/custom_button.dart';

class ListingScreen extends GetWidget<ListingController> {
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
                              child: Padding(
                                  padding:
                                      getPadding(left: 23, top: 30, right: 18),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(230.00),
                                            width: getHorizontalSize(382.00),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle25230x382,
                                                      height: getVerticalSize(
                                                          230.00),
                                                      width: getHorizontalSize(
                                                          382.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  20.00)),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  179.00),
                                                          margin: getMargin(
                                                              right: 20,
                                                              bottom: 20),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_nike_air_jordan"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold24),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                5),
                                                                    child: Text(
                                                                        "lbl_11_900"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterBold12)),
                                                                CustomButton(
                                                                    height: 34,
                                                                    width: 86,
                                                                    text:
                                                                        "lbl_shop_now"
                                                                            .tr,
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                3),
                                                                    shape: ButtonShape
                                                                        .CircleBorder17,
                                                                    padding:
                                                                        ButtonPadding
                                                                            .PaddingAll7,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .InterRegular14)
                                                              ])))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 31),
                                            child: Text("lbl_sports".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold24Bluegray700)),
                                        Padding(
                                            padding:
                                                getPadding(top: 27, right: 5),
                                            child: Obx(() => GridView.builder(
                                                shrinkWrap: true,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        mainAxisExtent: getVerticalSize(
                                                            289.00),
                                                        crossAxisCount: 2,
                                                        mainAxisSpacing:
                                                            getHorizontalSize(
                                                                24.00),
                                                        crossAxisSpacing:
                                                            getHorizontalSize(
                                                                24.00)),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: controller
                                                    .listingModelObj
                                                    .value
                                                    .listingItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListingItemModel model =
                                                      controller
                                                              .listingModelObj
                                                              .value
                                                              .listingItemList[
                                                          index];
                                                  return ListingItemWidget(
                                                      model,
                                                      onTapColumnpngwingone:
                                                          onTapColumnpngwingone);
                                                })))
                                      ]))))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
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

  onTapColumnpngwingone() {
    Get.toNamed(AppRoutes.detailsScreen);
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}

import 'controller/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/presentation/home_page/home_page.dart';
import 'package:kannonn_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:kannonn_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:kannonn_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kannonn_s_application1/widgets/custom_bottom_bar.dart';
import 'package:kannonn_s_application1/widgets/custom_button.dart';

class DetailsScreen extends GetWidget<DetailsController> {
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
                      Container(
                          margin: getMargin(left: 24, top: 30, right: 22),
                          decoration: AppDecoration.outlineBlack900191.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(20.00),
                                    width: getSize(20.00),
                                    margin: getMargin(top: 134, bottom: 134)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgPngwing1,
                                    height: getSize(287.00),
                                    width: getSize(287.00),
                                    margin: getMargin(left: 28)),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 10, bottom: 134),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFavorite,
                                              height: getSize(16.00),
                                              width: getSize(16.00)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: getSize(20.00),
                                              width: getSize(20.00),
                                              alignment: Alignment.centerRight,
                                              margin: getMargin(top: 107))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 29, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_sport_shoes".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold24),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStar,
                                    height: getSize(14.00),
                                    width: getSize(14.00),
                                    margin: getMargin(top: 5, bottom: 10)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStar,
                                    height: getSize(14.00),
                                    width: getSize(14.00),
                                    margin:
                                        getMargin(left: 5, top: 5, bottom: 10)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStar,
                                    height: getSize(14.00),
                                    width: getSize(14.00),
                                    margin:
                                        getMargin(left: 5, top: 5, bottom: 10)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStar,
                                    height: getSize(14.00),
                                    width: getSize(14.00),
                                    margin:
                                        getMargin(left: 5, top: 5, bottom: 10)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStarYellow800,
                                    height: getSize(14.00),
                                    width: getSize(14.00),
                                    margin:
                                        getMargin(left: 5, top: 5, bottom: 10)),
                                Padding(
                                    padding:
                                        getPadding(left: 5, top: 6, bottom: 8),
                                    child: Text("lbl_4_0".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular12Yellow800))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 23, top: 5),
                              child: Text("lbl_nike".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 9),
                              child: Text("lbl_1_900".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular24))),
                      Container(
                          width: getHorizontalSize(372.00),
                          margin: getMargin(top: 8),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_lorem_ipsum_dolor2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray300,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w300)),
                                TextSpan(
                                    text: "lbl_see_more".tr,
                                    style: TextStyle(
                                        color: ColorConstant.yellow800,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomButton(
                          height: 60,
                          width: 380,
                          text: "lbl_add_to_cart".tr,
                          margin: getMargin(top: 14, bottom: 5),
                          onTap: onTapAddtocart)
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

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapAddtocart() {
    Get.toNamed(AppRoutes.cartScreen);
  }
}

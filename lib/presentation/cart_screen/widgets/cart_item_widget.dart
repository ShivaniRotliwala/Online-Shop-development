import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj);

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 9,
        bottom: 9,
      ),
      decoration: AppDecoration.outlineBlack900191.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngwing1,
            height: getSize(
              60.00,
            ),
            width: getSize(
              60.00,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_sport_shoes".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold16,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgTrash,
                    height: getSize(
                      16.00,
                    ),
                    width: getSize(
                      16.00,
                    ),
                    margin: getMargin(
                      left: 182,
                      bottom: 4,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 14,
                      ),
                      child: Text(
                        "lbl_1_900".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular16Bluegray900,
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        left: 167,
                        top: 12,
                      ),
                      color: ColorConstant.gray100,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: ColorConstant.black90033,
                          width: getHorizontalSize(
                            1.00,
                          ),
                        ),
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Container(
                        height: getVerticalSize(
                          22.00,
                        ),
                        width: getHorizontalSize(
                          23.00,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.outlineBlack90033.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder2,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgMenuBlueGray700,
                              height: getSize(
                                14.00,
                              ),
                              width: getSize(
                                14.00,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 9,
                        top: 15,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_1".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular12Bluegray900,
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        left: 10,
                        top: 12,
                      ),
                      color: ColorConstant.gray100,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: ColorConstant.black90033,
                          width: getHorizontalSize(
                            1.00,
                          ),
                        ),
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Container(
                        height: getVerticalSize(
                          22.00,
                        ),
                        width: getHorizontalSize(
                          23.00,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.outlineBlack90033.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder2,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgPlus,
                              height: getSize(
                                14.00,
                              ),
                              width: getSize(
                                14.00,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

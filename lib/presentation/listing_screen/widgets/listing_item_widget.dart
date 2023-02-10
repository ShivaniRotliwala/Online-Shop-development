import '../controller/listing_controller.dart';
import '../models/listing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListingItemWidget extends StatelessWidget {
  ListingItemWidget(this.listingItemModelObj, {this.onTapColumnpngwingone});

  ListingItemModel listingItemModelObj;

  var controller = Get.find<ListingController>();

  VoidCallback? onTapColumnpngwingone;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnpngwingone!();
      },
      child: Container(
        padding: getPadding(
          all: 10,
        ),
        decoration: AppDecoration.outlineBlack900191.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getSize(
                154.00,
              ),
              width: getSize(
                154.00,
              ),
              margin: getMargin(
                left: 4,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPngwing1,
                    height: getSize(
                      150.00,
                    ),
                    width: getSize(
                      150.00,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgFavorite,
                    height: getSize(
                      16.00,
                    ),
                    width: getSize(
                      16.00,
                    ),
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Text(
                "lbl_sport_shoes".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold16,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Text(
                "lbl_nike".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular14,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getSize(
                      14.00,
                    ),
                    width: getSize(
                      14.00,
                    ),
                    margin: getMargin(
                      bottom: 1,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getSize(
                      14.00,
                    ),
                    width: getSize(
                      14.00,
                    ),
                    margin: getMargin(
                      left: 5,
                      bottom: 1,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getSize(
                      14.00,
                    ),
                    width: getSize(
                      14.00,
                    ),
                    margin: getMargin(
                      left: 5,
                      bottom: 1,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: getSize(
                      14.00,
                    ),
                    width: getSize(
                      14.00,
                    ),
                    margin: getMargin(
                      left: 5,
                      bottom: 1,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStarYellow800,
                    height: getSize(
                      14.00,
                    ),
                    width: getSize(
                      14.00,
                    ),
                    margin: getMargin(
                      left: 5,
                      bottom: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                    ),
                    child: Text(
                      "lbl_4_0".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12Yellow800,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
                bottom: 8,
              ),
              child: Text(
                "lbl_1_900".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular16Bluegray900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

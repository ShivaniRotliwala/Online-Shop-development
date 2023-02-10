import '../controller/categories_controller.dart';
import '../models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(this.categoriesItemModelObj,
      {this.onTapColumnpngwingone});

  CategoriesItemModel categoriesItemModelObj;

  var controller = Get.find<CategoriesController>();

  VoidCallback? onTapColumnpngwingone;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnpngwingone!();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.whiteA700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              height: getSize(
                179.00,
              ),
              width: getSize(
                179.00,
              ),
              padding: getPadding(
                all: 14,
              ),
              decoration: AppDecoration.outlineBlack900191.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Stack(
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
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 10,
            ),
            child: Text(
              "lbl_sports".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular16Bluegray300,
            ),
          ),
        ],
      ),
    );
  }
}

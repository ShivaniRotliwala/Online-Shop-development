import '../controller/home_controller.dart';
import '../models/listrectangletwentyfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListrectangletwentyfiveItemWidget extends StatelessWidget {
  ListrectangletwentyfiveItemWidget(this.listrectangletwentyfiveItemModelObj);

  ListrectangletwentyfiveItemModel listrectangletwentyfiveItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            230.00,
          ),
          width: getHorizontalSize(
            168.00,
          ),
          margin: getMargin(
            right: 14,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle25,
                height: getVerticalSize(
                  230.00,
                ),
                width: getHorizontalSize(
                  168.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: getPadding(
                    left: 18,
                    bottom: 19,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_1_48_000".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold12,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "msg_iphone_14_128gb".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold12Bluegray300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

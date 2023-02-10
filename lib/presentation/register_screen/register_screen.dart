import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/core/utils/validation_functions.dart';
import 'package:kannonn_s_application1/widgets/custom_button.dart';
import 'package:kannonn_s_application1/widgets/custom_checkbox.dart';
import 'package:kannonn_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding: getPadding(left: 23, top: 70, right: 23),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup,
                              height: getVerticalSize(55.00),
                              width: getHorizontalSize(377.00),
                              margin: getMargin(left: 2)),
                          Container(
                              width: getHorizontalSize(302.00),
                              margin: getMargin(top: 81),
                              child: Text("msg_register_your_account".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold46)),
                          CustomTextFormField(
                              width: 384,
                              focusNode: FocusNode(),
                              controller: controller.frameTwoController,
                              hintText: "lbl_full_name".tr,
                              margin: getMargin(top: 49),
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 18, right: 10, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUserGray400)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 384,
                              focusNode: FocusNode(),
                              controller: controller.frameFiveController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 20),
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 18, right: 10, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgMail)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              width: 384,
                              focusNode: FocusNode(),
                              controller: controller.frameFourController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingT17_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 18, right: 10, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 18,
                                          right: 18,
                                          bottom: 18),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          Obx(() => CustomCheckbox(
                              text: "msg_i_accept_the_terms".tr,
                              iconSize: 18,
                              value: controller.checkbox.value,
                              padding: getPadding(top: 23),
                              onChange: (value) {
                                controller.checkbox.value = value;
                              })),
                          CustomButton(
                              height: 60,
                              width: 380,
                              text: "lbl_sign_in".tr,
                              margin: getMargin(left: 2, top: 40),
                              variant: ButtonVariant.FillBluegray700,
                              onTap: onTapSignin),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 29, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_already_have_an".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterLight16),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSigninOne();
                                            },
                                            child: Padding(
                                                padding: getPadding(left: 10),
                                                child: Text("lbl_sign_in".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold16)))
                                      ])))
                        ])))));
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapTxtSigninOne() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}

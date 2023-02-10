import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/presentation/checkout_screen/models/checkout_model.dart';

class CheckoutController extends GetxController {
  Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  RxString radioGroup2 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

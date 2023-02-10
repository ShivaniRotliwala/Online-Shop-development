import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/presentation/details_screen/models/details_model.dart';
import 'package:kannonn_s_application1/widgets/custom_bottom_bar.dart';

class DetailsController extends GetxController {
  Rx<DetailsModel> detailsModelObj = DetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

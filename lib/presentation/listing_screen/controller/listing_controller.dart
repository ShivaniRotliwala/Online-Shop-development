import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/presentation/listing_screen/models/listing_model.dart';
import 'package:kannonn_s_application1/widgets/custom_bottom_bar.dart';

class ListingController extends GetxController {
  Rx<ListingModel> listingModelObj = ListingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

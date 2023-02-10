import 'package:kannonn_s_application1/core/app_export.dart';
import 'package:kannonn_s_application1/presentation/categories_screen/models/categories_model.dart';
import 'package:kannonn_s_application1/widgets/custom_bottom_bar.dart';

class CategoriesController extends GetxController {
  Rx<CategoriesModel> categoriesModelObj = CategoriesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:get/get.dart';
import 'categories_item_model.dart';

class CategoriesModel {
  RxList<CategoriesItemModel> categoriesItemList =
      RxList.filled(6, CategoriesItemModel());
}

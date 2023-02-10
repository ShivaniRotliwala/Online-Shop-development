import 'package:get/get.dart';
import 'listrectangletwentyfive_item_model.dart';
import 'listrectangletwentyfive_three_item_model.dart';
import 'listrectangletwentyfive_six_item_model.dart';

class HomeModel {
  RxList<ListrectangletwentyfiveItemModel> listrectangletwentyfiveItemList =
      RxList.filled(3, ListrectangletwentyfiveItemModel());

  RxList<ListrectangletwentyfiveThreeItemModel>
      listrectangletwentyfiveThreeItemList =
      RxList.filled(3, ListrectangletwentyfiveThreeItemModel());

  RxList<ListrectangletwentyfiveSixItemModel>
      listrectangletwentyfiveSixItemList =
      RxList.filled(3, ListrectangletwentyfiveSixItemModel());
}

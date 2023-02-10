import 'package:get/get.dart';
import 'listing_item_model.dart';

class ListingModel {
  RxList<ListingItemModel> listingItemList =
      RxList.filled(6, ListingItemModel());
}

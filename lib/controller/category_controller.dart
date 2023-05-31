import 'package:get/get.dart';
import '../data/dummy_data/category_data_list.dart';
import '../data/model/body/response/base/carousel_model.dart';
import '../data/model/body/response/base/category_flipkart.dart';
import '../data/model/body/response/base/category_item_discount_model.dart';
import '../data/model/body/response/base/category_item_model.dart';
import '../data/model/body/response/base/category_model.dart';
import '../data/model/body/response/base/category_product.dart';
import '../data/model/body/response/base/category_shop.dart';
import '../data/model/body/response/base/category_suggested_model.dart';
import '../data/model/body/response/base/category_trend.dart';

class CategoryController extends GetxController implements GetxService {
  CategoryController();

  bool isLoading = false;

  List<CategoryModel> getCategoryList() {
    return categoryDataList;
  }

  List<CategoryItemModel> getCategoryItemList() {
    return categoryDataItemList;
  }

  List<CategoryModelItemDiscount> getCategoryDataModelItemDiscountList() {
    return categoryDataModelItemDiscountList;
  }

  List<CategoryModelSuggested> getCategoryModelSuggestedList() {
    return categoryDataModelSuggestedList;
  }

  List<CategoryTrendModel> getCategoryTrendList() {
    return categoryDataTrendList;
  }

  List<CategoryShopModel> getCategoryShopList() {
    return categoryDataShopList;
  }

  List<CategoryFlipkartModel> getCategoryFlipkartList() {
    return categoryDataFlipkartList;
  }

  List<CategoryProductModel> getCategoryDataProductList() {
    return categoryDataProductList;
  }

  List<CategoryCarouselModel> getCategoryDataCarouselList() {
    return categoryDataCarouselList;
  }
}

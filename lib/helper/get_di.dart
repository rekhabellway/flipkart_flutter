import 'package:flipkart/controller/category_controller.dart';
import 'package:get/get.dart';

Future<void> init()async {
  Get.lazyPut(() => CategoryController());
}
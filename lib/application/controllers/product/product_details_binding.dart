import 'package:camp_aja/application/controllers/product/catalog_controller.dart';
import 'package:get/get.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CatalogController());
  }
}

import 'package:camp_aja/application/controllers/product/catalog_controller.dart';
import 'package:get/get.dart';

class CatalogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CatalogController());
  }
}

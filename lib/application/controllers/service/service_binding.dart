import 'package:camp_aja/application/controllers/service/service_controller.dart';
import 'package:get/get.dart';

class ServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceController());
  }
}

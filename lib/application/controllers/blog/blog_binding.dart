import 'package:camp_aja/application/controllers/blog/blog_controller.dart';
import 'package:get/get.dart';

class BlogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogController());
  }
}

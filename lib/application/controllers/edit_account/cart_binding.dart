import 'package:camp_aja/application/controllers/edit_account/edit_account_controller.dart';
import 'package:get/get.dart';

class EditAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditAccountController());
  }
}

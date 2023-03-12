import 'package:camp_aja/persentation/router/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppHeader {
  static String titles(BuildContext context) {
    final route = Get.currentRoute;
    final args = route.split('?search=').last;

    String param(String key) => Get.parameters[key]!;
    String parseData(String src) => src.replaceAll(RegExp(r'_'), ' ');

    if (route == Routes.LOGIN) {
      return 'Camp Aja | Login';
    }

    if (route == Routes.DASHBOARD) {
      return 'Make Your Journey Be Wild - Camp Aja';
    }
    if (route.contains(Paths.PROFILE) && route.contains(param('username'))) {
      return '${parseData(param('userName'))} | Profile';
    }
    if (route == Routes.EDIT_ACCOUNTS) {
      return '${parseData(param('userName'))} | Profile | Edit Accounts';
    }
    if (route == Routes.GET_LOCATION) {
      return '${parseData(param('userName'))} | Profile | Set Location';
    }
    if (route == Routes.CATALOG) {
      return 'Camp Aja | All Product';
    }

    if (route.contains(Routes.CATALOG) && route.contains(args)) {
      return 'Camp Aja | ${parseData(args)}';
    }

    if (route.contains(Routes.CATALOG) &&
        route.contains(param('productName'))) {
      return '${parseData(param('productName'))} - Details';
    }

    if (route.contains(Paths.CART) && route.contains(param('cartId'))) {
      return 'Cart | 3 items - location, e-card ready';
    }

    if (route == Paths.ORDERS) {
      return 'Delivery - 2 in progress';
    }

    if (route == Paths.BLOGS) {
      return 'Discover Your Adventure - Camp Aja';
    }

    if (route.contains(Paths.BLOGS) && route.contains(param('blogName'))) {
      return 'Blogs - ${parseData(param('blogName'))}';
    }

    return 'Camp Aja';
  }
}

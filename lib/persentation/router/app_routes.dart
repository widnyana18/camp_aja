// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();

  static const LOGIN = Paths.AUTH;
  static const SERVICE = Paths.SERVICE;
  static const DASHBOARD = SERVICE + Paths.DASHBOARD;
  static String PROFILE(String username) => '$SERVICE/$username';

  static const EDIT_ACCOUNTS = Paths.PROFILE + Paths.EDIT_ACCOUNTS;
  static const GET_LOCATION = Paths.PROFILE + Paths.GET_LOCATION;
  static const CATALOG = SERVICE + Paths.CATALOG;
  static String SEARCH_PRODUCT(String searchResult) =>
      '$CATALOG?search=${Uri.encodeQueryComponent(searchResult)}';
  static String PRODUCT_DETAILS(String prodName) => '$CATALOG/$prodName';
  static String CART(String cartId) => '$SERVICE/$cartId';
  static const ORDERS = SERVICE + Paths.ORDERS;
  static void BLOGS() => Paths.BLOGS;
  static String BLOG_DETAILS(String blogName) => '$BLOGS/$blogName';
}

abstract class Paths {
  static const AUTH = '/sign-in';
  static const SERVICE = '/isLogin=false';
  static const DASHBOARD = '/home';
  static const CATALOG = '/products';
  static const PRODUCT_DETAILS = '/:productName';
  static const CART = '/:cartId';
  static const ORDERS = '/orders';
  static const PROFILE = '/:username';
  static const EDIT_ACCOUNTS = '/edit-account';
  static const GET_LOCATION = '/get-location';
  static const BLOGS = '/blogs';
  static const BLOGS_DETAILS = '/:blogName';
}

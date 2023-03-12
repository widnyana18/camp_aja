part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();

  static const LOGIN = _Paths.AUTH;
  static const HOME = _Paths.HOME;
  static String DASHBOARD = _Paths.HOME + _Paths.DASHBOARD;
  static String PROFILE(String username) => '$HOME/$username';
  static const EDIT_ACCOUNTS = _Paths.PROFILE + _Paths.EDIT_ACCOUNTS;
  static const SET_LOCATION = _Paths.PROFILE + _Paths.SET_LOCATION;
  static String CATALOG = _Paths.HOME + _Paths.CATALOG;
  static String SEARCH_PRODUCT(String searchResult) =>
      '$HOME${_Paths.CATALOG}?search=${Uri.encodeQueryComponent(searchResult)}';
  static String PRODUCT_DETAILS(String prodName) => '$HOME$CATALOG/$prodName';
  static String CART(String cartId) => '$HOME/$cartId';
  static const ORDERS = _Paths.HOME + _Paths.ORDERS;
  static const BLOGS = _Paths.BLOGS;
  static String BLOG_DETAILS(String blogName) => '$BLOGS/$blogName';
}

abstract class _Paths {
  static const AUTH = '/sign-in';
  static const HOME = '/isLogin=false';
  static const DASHBOARD = '/home';
  static const CATALOG = '/products';
  static const PRODUCT_DETAILS = '/:productName';
  static const CART = '/:cartId';
  static const ORDERS = '/orders';
  static const PROFILE = '/:username';
  static const EDIT_ACCOUNTS = '/edit-account';
  static const SET_LOCATION = '/get-location';
  static const BLOGS = '/blogs';
  static const BLOGS_DETAILS = '/:blogName';
}

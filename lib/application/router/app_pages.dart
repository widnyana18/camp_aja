import 'package:camp_aja/application/middleware/auth_middleware.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';

part 'app_routes.dart';

class AppPages {
  const AppPages._();

  static final routes = <GetPage<dynamic>>[
    GetPage(
      name: '/',
      page: () => SplashView(),
      participatesInRootNavigator: true,
      children: [
        GetPage(
          name: _Paths.AUTH,
          page: () => AuthView(),
          bindings: [OnboardingBindings()],
          middlewares: [EnsureNotAuthMiddleware()],
        ),
        GetPage(
          name: _Paths.HOME,
          page: () => HomeView(),
          bindings: [HomeBindings()],
          children: [
            GetPage(
              name: _Paths.DASHBOARD,
              page: () => DashboardView(),
              bindings: [DashboardBindings()],
            ),
            GetPage(
              name: _Paths.PROFILE,
              page: () => ProfileUserView(),
              bindings: [ProfileBindings()],
              middlewares: [EnsureAuthMiddleware()],
              children: [
                GetPage(
                  name: _Paths.EDIT_ACCOUNTS,
                  page: () => EditAccountsView(),
                  bindings: [EditAccountsBindings()],
                  middlewares: [EnsureAuthMiddleware()],
                ),
                GetPage(
                  name: _Paths.SET_LOCATION,
                  page: () => SetLocationView(),
                  bindings: [SetLocationBindings()],
                  middlewares: [EnsureAuthMiddleware()],
                ),
              ],
            ),
            GetPage(
              name: _Paths.CATALOG,
              page: () => ExploreView(),
              bindings: [CatalogBindings()],
              children: [
                GetPage(
                  name: _Paths.PRODUCT_DETAILS,
                  page: () => ProductDetailsView(),
                  bindings: [ProductDetailsBindings()],
                ),
              ],
            ),
            GetPage(
              name: _Paths.CART,
              page: () => CartView(),
              bindings: [CartBindings()],
              middlewares: [EnsureAuthMiddleware()],
            ),
            GetPage(
              name: _Paths.ORDERS,
              page: () => OrderHistoryView(),
              bindings: [OrdersBindings()],
              middlewares: [EnsureAuthMiddleware()],
            ),
          ],
        ),
        GetPage(name: _Paths.BLOGS, page: () => BllogsView(), bindings: [
          BlogsBindings()
        ], children: [
          GetPage(
            name: _Paths.BLOGS_DETAILS,
            page: () => BLogDetailsView(),
            bindings: [BlogDetailsBindings()],
          ),
        ]),
      ],
    ),
  ];
}

import 'package:camp_aja/application/controllers/blog/blog_details_binding.dart';
import 'package:camp_aja/application/middleware/auth_middleware.dart';
import 'package:get/get.dart';

import '../../application/controllers/controllers.dart';
import '../screens/screens.dart';

part 'app_routes.dart';

class AppPages {
  const AppPages._();

  static final routes = <GetPage<dynamic>>[
    GetPage(
      name: '/',
      page: () => RootView(),
      participatesInRootNavigator: true,
      children: [
        GetPage(
          name: Paths.AUTH,
          page: () => OnboardingView(),
          bindings: [AuthBinding()],
          middlewares: [EnsureAuthMiddleware()],
        ),
        GetPage(
          name: Paths.SERVICE,
          page: () => ServiceView(),
          bindings: [ServiceBinding()],
          children: [
            GetPage(
              name: Paths.DASHBOARD,
              page: () => DashboardView(
                title: '',
              ),
              bindings: [DashboardBinding()],
            ),
            GetPage(
              name: Paths.PROFILE,
              page: () => UserProfileView(),
              bindings: [ProfileBinding()],
              middlewares: [EnsureAuthMiddleware()],
              children: [
                GetPage(
                  name: Paths.EDIT_ACCOUNTS,
                  page: () => EditAccountView(),
                  bindings: [EditAccountBinding()],
                  middlewares: [EnsureAuthMiddleware()],
                ),
                GetPage(
                  name: Paths.GET_LOCATION,
                  page: () => GetLocationView(),
                  bindings: [LocationBinding()],
                  middlewares: [EnsureAuthMiddleware()],
                ),
              ],
            ),
            GetPage(
              name: Paths.CATALOG,
              page: () => ExploreView(),
              bindings: [CatalogBinding()],
              children: [
                GetPage(
                  name: Paths.PRODUCT_DETAILS,
                  page: () => ProductDetailsView(),
                  bindings: [ProductDetailsBinding()],
                ),
              ],
            ),
            GetPage(
              name: Paths.CART,
              page: () => CartView(),
              bindings: [CartBinding()],
              middlewares: [EnsureAuthMiddleware()],
            ),
            GetPage(
              name: Paths.ORDERS,
              page: () => OrdersView(),
              bindings: [OrderBinding()],
              middlewares: [EnsureAuthMiddleware()],
            ),
          ],
        ),
        GetPage(
          name: Paths.BLOGS,
          page: () => BlogView(),
          bindings: [BlogBinding()],
          children: [
            GetPage(
              name: Paths.BLOGS_DETAILS,
              page: () => BlogDetailsView(),
              bindings: [BlogDetailsBinding()],
            ),
          ],
        ),
      ],
    ),
  ];
}

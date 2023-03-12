import 'package:camp_aja/infrastructure/service/user/auth_service.dart';
import 'package:camp_aja/persentation/router/app_pages.dart';
import 'package:get/get.dart';

class EnsureAuthMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    if (!AuthService.to.isLoggedInValue) {
      const newRoute = Routes.LOGIN;
      return GetNavConfig.fromRoute(newRoute);
    }
    return await super.redirectDelegate(route);
  }
}

class EnsureNotAuthedMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    if (AuthService.to.isLoggedInValue) {
      //NEVER navigate to auth screen, when user is already authed
      return null;

      //OR redirect user to another screen
      //return GetNavConfig.fromRoute(Routes.PROFILE);
    }
    return await super.redirectDelegate(route);
  }
}

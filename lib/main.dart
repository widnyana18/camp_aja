import 'package:camp_aja/application/controllers/authentication/auth_controller.dart';
import 'package:camp_aja/persentation/router/app_pages.dart';
import 'package:camp_aja/persentation/screens/unknown_view.dart';
import 'package:camp_aja/persentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      onGenerateTitle: AppHeader.titles,
      initialBinding: BindingsBuilder.put((() => AuthController())),
      theme: AppTheme.config(),
      getPages: AppPages.routes,
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => const UnknownView()),
      debugShowCheckedModeBanner: false,
      enableLog: true,
      navigatorObservers: [GetObserver()],
    );
  }
}

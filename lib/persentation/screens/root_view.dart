import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../router/app_pages.dart';

class RootView extends GetView {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = context.theme.colorScheme;
    return GetRouterOutlet.builder(
      routerDelegate: GetDelegate(),
      builder: (context, delegate, currentRoute) {
        // currentRoute?.currentTreeBranch.take(1);
        final timer = nextPage();
        if (timer.isActive) {
          return Material(
            child: Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color.primary, color.onSecondary],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset('logo.svg'),
                    Text(
                      'camp aja',
                      style: GoogleFonts.fugazOne(
                          color: color.background, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          ); //cancel the timer once we are done
        }
        return const SizedBox.shrink();
      },
    );
  }

  Timer nextPage() {
    final time =
        Timer(const Duration(seconds: 2), () => print('Timer Finished'));
    5.delay();
    if (GetPlatform.isWeb) {
      Get.offNamed(Routes.SERVICE);
    } else {
      Get.offNamed(Routes.LOGIN);
    }
    time.cancel();
    return time;
  }
}

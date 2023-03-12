import 'dart:ui';

import 'package:camp_aja/persentation/materials/form/signin_phone_form.dart';
import 'package:camp_aja/persentation/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingView extends GetView {
  OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final btnStyle = theme.elevatedButtonTheme.style;
    final smallWeb = GetPlatform.isWeb && context.isPhone;

    return GetBuilder(
      builder: (ctrl) {
        if (smallWeb) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'camp_bg_native.png',
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          theme.backgroundColor.withOpacity(.55),
                          theme.backgroundColor,
                          theme.backgroundColor
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        const Spacer(),
                        SvgPicture.asset('LOGO.svg', fit: BoxFit.scaleDown),
                        const Spacer(flex: 3),
                        const SigninPhoneForm(),
                        const Spacer(flex: 3),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }
        return IntroductionScreen(
          dotsDecorator: AppTheme.onboardingDotsDecor,
          showDoneButton: false,
          baseBtnStyle: btnStyle,
          showNextButton: false,
          controlsPadding: EdgeInsets.zero,
          pages: slideItems,
        );
      },
    );
  }

  List<PageViewModel> slideItems = [
    PageViewModel(
      image: Image.asset(
        'camp_bg_native.png',
        fit: BoxFit.cover,
      ),
      title: 'Easy Way to Camp',
      body: 'Rental camp, hiking, and outdoor tool just use e-wallet',
      footer: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.chevron_right_rounded),
        label: const Text('Continue'),
      ),
      decoration: AppTheme.onboardingDecor(),
      useScrollView: false,
    ),
    PageViewModel(
      image: Image.asset(
        'hike_bg_native.png',
        fit: BoxFit.cover,
      ),
      title: 'Great Company in Bali',
      body: 'Best Product and Service, simply delivery, and balance price',
      footer: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.chevron_right_rounded),
        label: const Text('Make Account'),
      ),
      decoration: AppTheme.onboardingDecor(),
      useScrollView: false,
    ),
    PageViewModel(
      image: SvgPicture.asset('LOGO.svg', fit: BoxFit.scaleDown),
      title: 'Sign In',
      bodyWidget: SigninPhoneForm.body(),
      footer: SigninPhoneForm.action(),
      decoration: AppTheme.onboardingDecor(),
      useScrollView: false,
    ),
  ];
}

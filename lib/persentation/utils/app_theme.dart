import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:introduction_screen/introduction_screen.dart';

class AppTheme {
  static TextTheme get txtTheme {
    const gFonts = TextTheme();
    gFonts.apply(bodyColor: const Color(0XFF09434B));

    return gFonts.copyWith(
      overline:
          gFonts.overline?.copyWith(fontSize: 10, fontWeight: FontWeight.w600),
      caption: gFonts.caption?.copyWith(fontSize: 11),
      bodyText1: gFonts.bodyText1?.copyWith(fontSize: 12),
      bodyText2: gFonts.bodyText2?.copyWith(fontSize: 14),
      bodyLarge: gFonts.bodyLarge?.copyWith(fontSize: 16),
      button:
          gFonts.button?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
      titleLarge: gFonts.titleLarge
          ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
      titleMedium: gFonts.titleMedium
          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
      subtitle1: gFonts.subtitle1?.copyWith(fontSize: 15),
      headline1:
          gFonts.headline1?.copyWith(fontSize: 72, fontWeight: FontWeight.w600),
      headline2:
          gFonts.headline2?.copyWith(fontSize: 60, fontWeight: FontWeight.w600),
      headline3:
          gFonts.headline3?.copyWith(fontSize: 48, fontWeight: FontWeight.w600),
      headline4:
          gFonts.headline4?.copyWith(fontSize: 34, fontWeight: FontWeight.w600),
      headline5:
          gFonts.headline5?.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
      headline6:
          gFonts.headline6?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }

  static DotsDecorator onboardingDotsDecor = DotsDecorator(
    activeColor: const Color(0xFFA5D6DE),
    activeShape: const StadiumBorder(),
    activeSize: const Size(50, 9),
    color: const Color(0xFFA5D6DE).withOpacity(.4),
    spacing: const EdgeInsets.all(10),
  );

  static PageDecoration onboardingDecor() {
    final pageView = PageViewModel(title: '', body: '');
    return pageView.decoration.copyWith(
      bodyTextStyle: txtTheme.bodyText2,
      contentMargin: const EdgeInsets.all(30),
      footerPadding: const EdgeInsets.only(top: 15),
      fullScreen: true,
      imageAlignment: Alignment.topCenter,
      imageFlex: 2,
      imagePadding: EdgeInsets.zero,
      pageColor: const Color(0XFFF3F9FA),
      titlePadding: const EdgeInsets.only(bottom: 14),
      titleTextStyle: txtTheme.headline4,
    );
  }

  static PinTheme defaultPin = PinTheme(
    width: 56,
    height: 60,
    textStyle: txtTheme.headline6,
    decoration: BoxDecoration(
      color: const Color(0XFFF3F9FA),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.transparent),
    ),
  );

  static PinTheme focusPin = defaultPin.copyWith(
    height: 68,
    width: 64,
    decoration: defaultPin.decoration!.copyWith(
      border: Border.all(color: const Color(0xFF128B9E)),
    ),
  );

  static PinTheme errorPin = defaultPin.copyWith(
    decoration: BoxDecoration(
      color: const Color(0XFFE24949),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  static ThemeData config() {
    final theme = ThemeData.light();

    return theme.copyWith(
      colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        primary: Color(0xFF128B9E),
        primaryContainer: Color(0xFFDBEBEE),
        inversePrimary: Color(0xFF15B0C8),
        onPrimary: Color(0XFFF3F9FA),
        secondary: Color(0xFFFFC234),
        onSecondary: Color(0XFF09434B),
        secondaryContainer: Color(0XFFF3F9FA),
        tertiary: Color(0xFFFA5B3D),
        tertiaryContainer: Color(0XFF09434B),
        background: Color(0XFFF3F9FA),
        error: Color(0XFFE24949),
        shadow: Color(0xFF588187),
      ),
      primaryColor: const Color(0xFF128B9E),
      useMaterial3: true,
      textTheme: txtTheme,
      canvasColor: const Color(0xFFF8FEFF),
      disabledColor: const Color(0xFF588187),
      hoverColor: const Color(0xFF128B9E).withOpacity(.4),
      backgroundColor: const Color(0xFFF3F9FA),
      toggleableActiveColor: const Color(0xFF128B9E),
      scaffoldBackgroundColor: const Color(0xFFF3F9FA),
      dividerTheme: const DividerThemeData(
        color: Color(0xFFDBEBEE),
        indent: 0,
        endIndent: 0,
        space: 15,
        thickness: 2,
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: Color(0xFF588187),
        textColor: Color(0XFF09434B),
        tileColor: Color(0xFFF8FEFF),
        selectedColor: Color(0XFFF3F9FA),
        selectedTileColor: Color(0xFF128B9E),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        circularTrackColor: Color(0xFF15B0C8),
        linearTrackColor: Color(0xFF15B0C8),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: const Color(0xFFF8FEFF),
        indicatorColor: const Color(0xFFDBEBEE),
        indicatorShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        iconTheme: MaterialStateProperty.resolveWith<IconThemeData>((states) {
          if (states.contains(MaterialState.selected)) {
            return const IconThemeData(color: Color(0xFF128B9E));
          }
          return const IconThemeData(color: Color(0xFFDADADA));
        }),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: const Color(0XFF09434B),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: const BorderSide(color: Color(0XFF09434B)),
          textStyle: txtTheme.button,
        ),
      ),
      iconTheme: const IconThemeData(color: Color(0XFF09434B), size: 22),
      cardTheme: CardTheme(
        color: const Color(0XFFF3F9FA),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: const Color(0xFFDBEBEE),
        selectedColor: const Color(0xFF128B9E),
        secondarySelectedColor: Colors.transparent,
        checkmarkColor: const Color(0XFFF3F9FA),
        elevation: 0,
        pressElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        labelStyle: txtTheme.bodyText2,
        secondaryLabelStyle: txtTheme.bodyText2,
        brightness: Brightness.light,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Color(0xFFF8FEFF),
        modalBackgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        textStyle: txtTheme.button,
        color: const Color(0xFFF8FEFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: const Color(0xFFF8FEFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        titleTextStyle: txtTheme.headline5,
        contentTextStyle: txtTheme.bodyText2,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: const Color(0XFFF3F9FA),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: const Color(0xFF588187),
          textStyle: txtTheme.bodyLarge,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF128B9E),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 11),
          textStyle: txtTheme.button,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color(0xFF3F3F3F),
        filled: true,
        helperMaxLines: 2,
        prefixIconColor: const Color(0xFF09434B),
        suffixIconColor: const Color(0xFF09434B),
      ),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: const Border(
            bottom: BorderSide(color: Color(0xFF128B9E), width: 2),
          ),
        ),
        labelStyle: txtTheme.button,
        unselectedLabelStyle: txtTheme.button,
        labelColor: const Color(0xFF128B9E),
      ),
      appBarTheme: AppBarTheme(
        // color: const Color(0xFF09434B),
        backgroundColor: const Color(0xFFF8FEFF),
        titleTextStyle: txtTheme.headline5,
      ),
    );
  }
}

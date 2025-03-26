import 'package:flutter/material.dart';

// import 'package:flutter_custom_theme/flutter_custom_theme.dart';
import './colors.dart';

class AppTheme {
    //size
    static double get xSmall => 8.0;
    static double get small => 16.0;
    static double get medium => 24.0;
    static double get large => 32.0;
    static double get xLarge => 40.0;
    static double get xxLarge => 48.0;

    ///font
    //fontColor
    static Color get primaryColor500 => AppColors.mainColorL500;
    static Color get monoColor800 => AppColors.monoColorL800;
    static Color get monoColor500 => AppColors.monoColorL500;
    //fontSize
    static double get fontSizeH32 => 32.0;
    static double get fontSizeH24 => 24.0;
    static double get fontSizeH20 => 20.0;
    static double get fontSizeH18 => 18.0;
    static double get fontSizeH16 => 16.0;
    static double get fontSizeH14 => 14.0;
    static double get fontSizeH12 => 12.0;
    static double get fontSizeM16 => 16.0;
    static double get fontSizeM14 => 14.0;
    static double get fontSizeM12 => 12.0;
    static double get fontSizeR16 => 16.0;
    static double get fontSizeR14 => 14.0;
    static double get fontSizeR12 => 12.0;
    //font weight
    static FontWeight get fontWeightBold => FontWeight.w700;
    static FontWeight get fontWeightMedium => FontWeight.w500;
    static FontWeight get fontWeightRegular => FontWeight.w400;
    //font linehiehgt
    static double get lineHeightRatio01 => 1.2;
    static double get lineHeightRatio02 => 1.3;
    static double get lineHeightRatio03 => 1.4;
    static double lineHeight01(double fontSize) => fontSize * lineHeightRatio01;
    static double lineHeight02(double fontSize) => fontSize * lineHeightRatio02;
    static double lineHeight03(double fontSize) => fontSize * lineHeightRatio03;
    //font letter spacing
    static double get letterSpacingB => -0.8;
    static double get letterSpacingMB => -0.6;
    static double get letterSpacingM => -0.45;
    static double get letterSpacingH => -0.4;
    static double get letterSpacingHS => -0.35;
    static double get letterSpacingS => -0.3;
//textStyle
    static TextStyle get h32B800TextStyle => TextStyle(
        //32,700,120%,0.8
        fontFamily: 'Sp-B',
        color: monoColor800,
        fontSize: fontSizeH32,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH32) / fontSizeH32,
        letterSpacing: letterSpacingB,
    );

    static TextStyle get h24TextStyle => TextStyle(
        //24,700,120%,-0.4
        fontFamily: 'Sp-B',
        fontSize: fontSizeH24,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH24) / fontSizeH24,
        letterSpacing: letterSpacingH,
    );

    static TextStyle get h24MBTextStyle => TextStyle(
        //24,700,120%,-0.6
        fontFamily: 'Sp-B',
        fontSize: fontSizeH24,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH24) / fontSizeH24,
        letterSpacing: letterSpacingMB,
    );

    static TextStyle get h24RHTextStyle => TextStyle(
        //24,400,120%,-0.4
        fontFamily: 'Sp-R',
        fontSize: fontSizeH24,
        fontWeight: fontWeightRegular,
        height: lineHeight01(fontSizeH24) / fontSizeH24,
        letterSpacing: letterSpacingH,
    );

    static TextStyle get h20HTextStyle => TextStyle(
        //20,700,120%,-0.4
        fontFamily: 'Sp-B',
        fontSize: fontSizeH20,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH20) / fontSizeH20,
        letterSpacing: letterSpacingH,
    );

    static TextStyle get h20TextStyle => TextStyle(
        //20,700,120%,-0.4
        fontFamily: 'Sp-B',
        fontSize: fontSizeH20,
        height: lineHeight01(fontSizeH20) / fontSizeH20,
        letterSpacing: letterSpacingH,
    );

    static TextStyle get h18TextStyle => TextStyle(
        //18,700,120%,-0.4
        fontFamily: 'Sp-B',
        fontSize: fontSizeH18,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH18) / fontSizeH18,
        letterSpacing: letterSpacingH,
    );

    static TextStyle get h18MTextStyle => TextStyle(
        //18,700,120%,-0.45
        fontFamily: 'Sp-B',
        fontSize: fontSizeH18,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH18) / fontSizeH18,
        letterSpacing: letterSpacingM,
    );

    static TextStyle get h18H800TextStyle => TextStyle(
        //18,700,120%,-0.4,monoColorL800
        fontFamily: 'Sp-B',
        color: monoColor800,
        fontSize: fontSizeH18,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH18) / fontSizeH18,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h18M800TextStyle => TextStyle(
        //18,700,120%,-0.45,monoColorL800
        fontFamily: 'Sp-B',
        color: monoColor800,
        fontSize: fontSizeH18,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH18) / fontSizeH18,
        letterSpacing: letterSpacingM,
    );
    static TextStyle get h16HTextStyle => TextStyle(
        //16,700,120%,-0.4
        fontFamily: 'Sp-B',
        fontSize: fontSizeH16,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h16MH800TextStyle => TextStyle(
        //16,500,120%,-0.4,monoColorL800
        fontFamily: 'Sp-M',
        color: monoColor800,
        fontSize: fontSizeH16,
        fontWeight: fontWeightMedium,
        height: lineHeight01(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h16MLH2TextStyle => TextStyle(
        //16,500,130%,-0.4
        fontFamily: 'Sp-M',
        fontSize: fontSizeH16,
        fontWeight: fontWeightMedium,
        height: lineHeight02(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h16RH3TextStyle => TextStyle(
        //16,400,140%,-0.4
        fontFamily: 'Sp-R',
        fontSize: fontSizeH16,
        fontWeight: fontWeightRegular,
        height: lineHeight03(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h16RHTextStyle => TextStyle(
        //16,400,120%,-0.4
        fontFamily: 'Sp-R',
        fontSize: fontSizeH16,
        fontWeight: fontWeightRegular,
        height: lineHeight01(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h16RLH2TextStyle => TextStyle(
        //16,400,130%,-0.4
        fontFamily: 'Sp-R',
        fontSize: fontSizeH16,
        fontWeight: fontWeightRegular,
        height: lineHeight02(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h16RMHTextStyle => TextStyle(
        //16,400,120%,-0.4
        fontFamily: 'Sp-R',
        fontSize: fontSizeH16,
        fontWeight: fontWeightMedium,
        height: lineHeight01(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );

    static TextStyle get h16MH500TextStyle => TextStyle(
        //16,500,120%,-0.4,monoColorL500
        fontFamily: 'Sp-M',
        color: monoColor500,
        fontSize: fontSizeH16,
        fontWeight: fontWeightMedium,
        height: lineHeight01(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h16RH800TextStyle => TextStyle(
        //16,400,120%,-0.4,monoColorL800
        fontFamily: 'Sp-R',
        color: monoColor800,
        fontSize: fontSizeH16,
        fontWeight: fontWeightRegular,
        height: lineHeight01(fontSizeH16) / fontSizeH16,
        letterSpacing: letterSpacingH,
    );
    static TextStyle get h14HTextStyle => TextStyle(
        //14,700,120%,-0.4
        fontFamily: 'Sp-B',
        fontSize: fontSizeH14,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH14) / fontSizeH14,
        letterSpacing: letterSpacingH,
    );

    static TextStyle get h14BHSTextStyle => TextStyle(
        //14,700,120,-0.35
        fontFamily: 'Sp-B',
        fontSize: fontSizeH14,
        fontWeight: fontWeightBold,
        height: lineHeight01(fontSizeH14) / fontSizeH14,
        letterSpacing: letterSpacingHS,
    );

    static TextStyle get h14MHSTextStyle => TextStyle(
        //14,500,120,-0.35
        fontFamily: 'Sp-M',
        fontSize: fontSizeH14,
        fontWeight: fontWeightMedium,
        height: lineHeight01(fontSizeH14) / fontSizeH14,
        letterSpacing: letterSpacingHS,
    );

    static TextStyle get h14RHSTextStyle => TextStyle(
        //14,400,120,-0.35
        fontFamily: 'Sp-R',
        fontSize: fontSizeH14,
        fontWeight: fontWeightRegular,
        height: lineHeight01(fontSizeH14) / fontSizeH14,
        letterSpacing: letterSpacingHS,
    );

    static TextStyle get h14RLH2TextStyle => TextStyle(
        //14,400,130,-0.35
        fontFamily: 'Sp-R',
        fontSize: fontSizeH14,
        fontWeight: fontWeightRegular,
        height: lineHeight02(fontSizeH14) / fontSizeH14,
        letterSpacing: letterSpacingHS,
    );

    static TextStyle get h12MTextStyle => TextStyle(
        //12,500,120,-0.3
        fontFamily: 'Sp-M',
        fontSize: fontSizeM12,
        fontWeight: fontWeightMedium,
        height: lineHeight01(fontSizeM12) / fontSizeM12,
        letterSpacing: letterSpacingS,
    );

    static TextStyle get h12RLH2TextStyle => TextStyle(
        fontFamily: 'Sp-R',
        fontSize: fontSizeH12,
        fontWeight: fontWeightRegular,
        height: lineHeight02(fontSizeH12) / fontSizeH12,
        letterSpacing: letterSpacingHS,
    );

    static TextStyle get h10MTextStyle => TextStyle(
        fontFamily: 'Sp-M',
        fontSize: 10,
        fontWeight: fontWeightMedium,
        height: lineHeight01(10) / 10,
        letterSpacing: letterSpacingS,
    );

    //corner
    static double get corner4 => 4.0;
    static double get corner8 => 8.0;
    static double get corner10 => 10.0;
    static double get corner12 => 12.0;
    static double get corner16 => 16.0;
    static double get corner32 => 32.0;
    static double get corner99 => 99.0;
    //animation

    //shadow
    static List<BoxShadow> defaultBottomShadow = [
        const BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.1),
            offset: Offset(0, 1),
            blurRadius: 3.0,
        ),
        const BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.05),
            offset: Offset(0, 4),
            blurRadius: 8.0,
            spreadRadius: -1,
        ),
    ];

    static List<BoxShadow> defaultTopShadow = [
        const BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.1),
            offset: Offset(0, -1),
            blurRadius: 3.0,
        ),
        const BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.05),
            offset: Offset(0, -4),
            blurRadius: 8.0,
            spreadRadius: -1,
        )
    ];

    static List<BoxShadow> softBottomShadow = [
        const BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.05),
            offset: Offset(0, 1),
            blurRadius: 3.0,
        ),
        const BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.03),
            offset: Offset(0, -4),
            blurRadius: 8.0,
            spreadRadius: -1,
        ),
    ];

    static const List<BoxShadow> softTopShadow = [
        BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.05),
            offset: Offset(0, -1),
            blurRadius: 3,
            spreadRadius: 0,
        ),
        BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.03),
            offset: Offset(0, -4),
            blurRadius: 8,
            spreadRadius: 1,
        ),
    ];

    static List<BoxShadow> fabBottomShadow = [
        const BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.15),
            offset: Offset(0, 2),
            blurRadius: 3.0,
        ),
        const BoxShadow(
            color: Color.fromRGBO(21, 34, 43, 0.15),
            offset: Offset(0, 6),
            blurRadius: 12.0,
            spreadRadius: -4,
        ),
    ];

    static List<BoxShadow> softBottomShadowPink = [
        const BoxShadow(
            color: Color.fromRGBO(234, 24, 94, 0.05),
            offset: Offset(0, 1),
            blurRadius: 3.0,
        ),
        const BoxShadow(
            color: Color.fromRGBO(234, 24, 94, 0.03),
            offset: Offset(0, 4),
            blurRadius: 8.0,
            spreadRadius: 1,
        ),
    ];

    static const List<BoxShadow> softTopShadowPink = [
        BoxShadow(
            color: Color.fromRGBO(234, 24, 94, 0.05),
            offset: Offset(0, -1),
            blurRadius: 3,
            spreadRadius: 0,
        ),
        BoxShadow(
            color: Color.fromRGBO(234, 24, 94, 0.03),
            offset: Offset(0, -4),
            blurRadius: 8,
            spreadRadius: 1,
        ),
    ];
//light mode
// static ThemeData get lightTheme {
//   return ThemeData(
//     primaryColor: AppColors.mainColorL500,
//     scaffoldBackgroundColor: AppColors.wh,
//     colorScheme: ColorScheme.light(
//       // primary: AppColors.mainColorL500,
//       // secondary: AppColors.mainColorL500,
//       // onSecondary: AppColors.wh,
//       // tertiary: AppColors.monoColorL200,
//       // tertiaryContainer: AppColors.wh,
//       // surface : AppColors.monoColorL100,
//     ),
//     textTheme: TextTheme(
//       displayLarge: h24TextStyle,
//       bodyLarge: h16TextStyle,
//     ),
//   );
// }
//
//
// //dark mode
// static ThemeData get darkTheme {
//   return ThemeData(
//     primaryColor: AppColors.mainColorD500,
//     scaffoldBackgroundColor: AppColors.bl,
//     colorScheme: ColorScheme.dark(),
//     textTheme: TextTheme(
//       displayLarge: h24TextStyle.copyWith(color: AppColors.wh),
//       bodyLarge: h16TextStyle.copyWith(color: AppColors.wh),
//     ),
//   );
// }
}

//light mode
class AppLightTheme {
    static final ThemeData data = ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: AppColors.monoColorL200,
        ),
        brightness: Brightness.light,
        primaryColor: AppColors.mainColorL500,
        scaffoldBackgroundColor: AppColors.wh,
        appBarTheme: const AppBarTheme(
            color: AppColors.monoColorL800,
        ),
        colorScheme: const ColorScheme.light(
            primary: AppColors.mainColorL500,
            onPrimary: AppColors.wh,
            secondary: AppColors.subColorL500,
            onSecondary: AppColors.subColorL500,
            surface: AppColors.wh,
            error: AppColors.warningColorL500,
            onError: AppColors.warningColorL500,
        ),
        textTheme: TextTheme(
            displayLarge: AppTheme.h24TextStyle,
            displayMedium: AppTheme.h18TextStyle,
            displaySmall: AppTheme.h16HTextStyle,
        ),
    );
}

//dark mode
class AppDarkTheme {
    static final ThemeData data = ThemeData(
        primaryColor: AppColors.mainColorD500,
        scaffoldBackgroundColor: AppColors.bl,
        appBarTheme: const AppBarTheme(
            color: AppColors.monoColorL800, //미정
        ),
        colorScheme: const ColorScheme.light(
            primary: AppColors.mainColorD500,
            onPrimary: AppColors.wh,
            secondary: AppColors.subColorD500,
            onSecondary: AppColors.wh,
            surface: AppColors.bl,
            error: AppColors.warningColorD500,
            onError: AppColors.warningColorD500,
        ),
        textTheme: TextTheme(
            displayLarge: AppTheme.h24TextStyle,
            displayMedium: AppTheme.h18TextStyle,
            displaySmall: AppTheme.h16HTextStyle,
        ),
    );
}

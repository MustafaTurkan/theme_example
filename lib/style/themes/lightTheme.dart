import 'dart:ui';
import 'package:defacto_theme/style/appThemeData.dart';
import 'package:defacto_theme/style/iappColors.dart';
import 'package:defacto_theme/style/iappTextStyles.dart';
import 'package:defacto_theme/style/themeUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LightThemeColors extends IAppColors {
  @override
  Color get canvas => Color(0xffffffff);

  @override
  Color get canvasDark => Color(0xfff4f4f5);

  @override
  Color get font => primary;

  @override
  Color get fontPale => Color(0xff908e97);

  @override
  Color get fontlight => canvas;

  @override
  Color get primary => Color(0xff22242a);
}

class LightThemeTextStyles extends IAppTextStyles {
  LightThemeTextStyles(this.data, this.colors);

  ThemeData data;
  IAppColors colors;

  @override
  TextStyle get body => data.textTheme.bodyText2;

  @override
  TextStyle get bodyBold => data.textTheme.bodyText2.copyWith(fontWeight: FontWeight.w700);

  @override
  TextStyle get bodyLight => data.textTheme.bodyText2.copyWith(fontWeight: FontWeight.w300);

  @override
  TextStyle get bodySemiBold => data.textTheme.bodyText2.copyWith(fontWeight: FontWeight.w600);

  @override
  TextStyle get bodyWhite => data.textTheme.bodyText2.copyWith(color: colors.fontlight);

  @override
  TextStyle get bodyWhiteExtraBold =>
      data.textTheme.bodyText2.copyWith(color: colors.fontlight, fontWeight: FontWeight.w800);

  @override
  TextStyle get caption => data.textTheme.caption;

  @override
  TextStyle get captionBold => data.textTheme.caption.copyWith(fontWeight: FontWeight.w700);

  @override
  TextStyle get captionGrey => data.textTheme.caption;

  @override
  TextStyle get captionWhiteExtraBold =>
      data.textTheme.caption.copyWith(color: colors.fontlight, fontWeight: FontWeight.w800);

  @override
  TextStyle get headLine4WhiteExtraBold =>
      data.textTheme.headline4.copyWith(color: colors.fontlight, fontWeight: FontWeight.w800);

  @override
  TextStyle get headLine5WhiteExtraBold =>
      data.textTheme.headline5.copyWith(color: colors.fontlight, fontWeight: FontWeight.w800);

  @override
  TextStyle get headLine6 => data.textTheme.headline6;

  @override
  TextStyle get overLine => data.textTheme.caption.copyWith(fontSize: 12);
}

AppThemeData buildLightTheme(BuildContext context) {
  var fontFamily = 'Mulish';
  var buttonBorderRadius = BorderRadius.circular(0);
  var cardBorderRadius = BorderRadius.circular(0);
  var appColors = LightThemeColors();
  var baseTheme = Theme.of(context);

  TextTheme _appBarTextTheme(
    TextTheme base,
    Color color,
    String fontFamily,
  ) {
    return ThemeUtils.textThemeCopyWith(base, color, fontFamily).copyWith(
      headline6: base.headline6.copyWith(
        color: color,
        fontSize: base.headline6.fontSize,
        fontWeight: FontWeight.normal,
        fontFamily: fontFamily,
      ),
    );
  }

  var lightTheme = ThemeData(
    fontFamily: fontFamily,
    brightness: Brightness.dark,
    primaryColor: appColors.primary,
    accentColor: appColors.primary,
    accentColorBrightness: Brightness.dark,
    textSelectionColor: appColors.canvasDark,
    canvasColor: appColors.canvas,
    scaffoldBackgroundColor: appColors.canvas,
    bottomAppBarColor: appColors.canvas,
    cardColor: appColors.canvasDark,
    unselectedWidgetColor: appColors.primary,
    selectedRowColor: appColors.primary.withOpacity(0.5),
    disabledColor: appColors.primary.withOpacity(0.2),
    cursorColor: appColors.primary,
    textSelectionHandleColor: appColors.primary.withOpacity(0.5),
    backgroundColor: appColors.canvas,
    dialogBackgroundColor: appColors.canvas,
    indicatorColor: appColors.primary,
    toggleableActiveColor: appColors.primary,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      disabledMouseCursor: MouseCursor.defer,
      elevation: 0.5,
      onSurface: appColors.primary,
      shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
      primary: appColors.primary,
      onPrimary: appColors.fontlight,
    )),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            onSurface: appColors.primary,
            disabledMouseCursor: MouseCursor.uncontrolled,
            shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
            backgroundColor: appColors.canvas,
            primary: appColors.primary)),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      onSurface: appColors.primary,
      disabledMouseCursor: MouseCursor.defer,
      primary: appColors.primary,
      shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
      side: BorderSide(color: appColors.primary, width: 0.5),
    )),
    iconTheme: IconThemeData(color: appColors.primary, size: 24),
    primaryIconTheme: IconThemeData(color: appColors.primary, size: 24),
    appBarTheme: AppBarTheme(
      color: appColors.canvas,
      elevation: 0,
      textTheme: _appBarTextTheme(baseTheme.primaryTextTheme, appColors.font, fontFamily),
    ),
    tabBarTheme: TabBarTheme(
        labelColor: appColors.primary,
        unselectedLabelColor: appColors.primary,
        labelStyle: TextStyle(color: appColors.primary, fontSize: 13, fontWeight: FontWeight.w700),
        unselectedLabelStyle: TextStyle(color: appColors.primary, fontSize: 13)),
    cardTheme: CardTheme(
      color: appColors.canvasDark,
      shape: RoundedRectangleBorder(borderRadius: cardBorderRadius),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appColors.canvas,
        elevation: 0,
        selectedItemColor: appColors.primary,
        unselectedItemColor: appColors.primary,
        selectedIconTheme: IconThemeData(color: appColors.primary, size: 25),
        unselectedIconTheme: IconThemeData(color: appColors.primary, size: 22)),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: appColors.primary,
      elevation: 0.5,
    ),
    dividerTheme:
        DividerThemeData(color: appColors.primary.withOpacity(0.3), endIndent: 10, indent: 10, thickness: 0.5),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: appColors.primary, fontSize: 13),
    ),
    textTheme: ThemeUtils.textThemeCopyWith(baseTheme.textTheme, appColors.font, fontFamily),
    primaryTextTheme: ThemeUtils.textThemeCopyWith(baseTheme.primaryTextTheme, appColors.font, fontFamily),
    accentTextTheme: ThemeUtils.textThemeCopyWith(baseTheme.accentTextTheme, appColors.fontlight, fontFamily),
  );

  return AppThemeData(lightTheme, appColors, LightThemeTextStyles(lightTheme, appColors));
}

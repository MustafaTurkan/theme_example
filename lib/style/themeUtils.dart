import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeUtils {
  static TextTheme textThemeCopyWith(
    TextTheme base,
    Color color,
    String fontFamily,
  ) {
    return TextTheme(
        headline1: base.headline1.copyWith(color: color, fontFamily: fontFamily),
        headline2: base.headline2.copyWith(color: color, fontFamily: fontFamily),
        headline3: base.headline3.copyWith(color: color, fontFamily: fontFamily),
        headline4: base.headline4.copyWith(color: color, fontFamily: fontFamily, fontSize: 36),
        headline5: base.headline5.copyWith(color: color, fontFamily: fontFamily, fontSize: 24),
        headline6: base.headline6.copyWith(color: color, fontFamily: fontFamily, fontSize: 18),
        subtitle1: base.subtitle1.copyWith(color: color, fontFamily: fontFamily),
        subtitle2: base.subtitle2.copyWith(color: color, fontFamily: fontFamily),
        bodyText1: base.bodyText1.copyWith(color: color, fontFamily: fontFamily),
        bodyText2: base.bodyText2.copyWith(color: color, fontFamily: fontFamily, fontSize: 14),
        caption: base.caption.copyWith(color: color, fontFamily: fontFamily, fontSize: 13),
        button: base.button.copyWith(color: color, fontFamily: fontFamily, fontSize: 14),
        overline: base.overline.copyWith(color: color, fontFamily: fontFamily, fontSize: 12));
  }
}

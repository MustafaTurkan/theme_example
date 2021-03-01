import 'package:defacto_theme/style/iappColors.dart';
import 'package:defacto_theme/style/iappTextStyles.dart';
import 'package:flutter/material.dart';
import 'appThemeData.dart';

class AppTheme with ChangeNotifier {
  IAppColors _colors;
  IAppColors get colors => _colors;

  ThemeData _data;
  ThemeData get data => _data;

  IAppTextStyles _textStyles;
  IAppTextStyles get textStyles => _textStyles;

  bool get initialized => colors != null && data != null && _textStyles != null;

  void setTheme(AppThemeData appThemeData) {
    assert(appThemeData != null);

    var shouldNotifyListeners = initialized;
    _colors = appThemeData.color;
    _data = appThemeData.data;
    _textStyles = appThemeData.textStyles;

    if (shouldNotifyListeners) {
      notifyListeners();
    }
  }
}

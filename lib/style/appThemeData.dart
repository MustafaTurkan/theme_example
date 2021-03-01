import 'package:defacto_theme/style/iappColors.dart';
import 'package:defacto_theme/style/iappTextStyles.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  AppThemeData(this.data, this.color, this.textStyles);
  ThemeData data;
  IAppColors color;
  IAppTextStyles textStyles;
}

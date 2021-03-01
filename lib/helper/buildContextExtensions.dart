import 'package:defacto_theme/style/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension BuildContextExtensions on BuildContext {
  AppTheme getTheme({bool listen = false}) => Provider.of<AppTheme>(this, listen: listen);
}

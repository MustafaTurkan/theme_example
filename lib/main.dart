import 'package:defacto_theme/style/appTheme.dart';
import 'package:defacto_theme/style/themes/lightTheme.dart';
import 'package:defacto_theme/themeTestPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'helper/buildContextExtensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppTheme>(
      create: (_) => AppTheme(),
      child: Builder(
        builder: (context) {
          return MaterialApp(theme: _buildTheme(context), title: 'Theme Test', home: ThemeTestPage());
        },
      ),
    );
  }

  ThemeData _buildTheme(BuildContext context) {
    var theme = context.getTheme();

    if (!theme.initialized) {
      theme.setTheme(buildLightTheme(context));
    }
    return theme.data;
  }
}

import 'package:flutter/material.dart';
import 'package:pharmaklik/core/theme/app_theme.dart';
import 'package:pharmaklik/features/auth/presentation/pages/login_page.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
     theme: AppTheme.getThemeData(),
    );
  }
}

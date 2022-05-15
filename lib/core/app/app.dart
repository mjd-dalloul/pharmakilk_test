import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaklik/core/app/app_bloc/app_bloc.dart';
import 'package:pharmaklik/core/theme/app_theme.dart';
import 'package:pharmaklik/features/auth/presentation/pages/login_page.dart';
import 'package:pharmaklik/injection.dart';

import '../../features/pharmacy/presentation/pharmacy_list.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (_) => sl<AppBloc>(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (p, c) => p.isAuthenticated != c.isAuthenticated,
      builder: (context, state) {
        return MaterialApp(
          home: state.isAuthenticated
              ? const PharmacyList()
              : const LoginPageProvider(),
          theme: AppTheme.getThemeData(),
        );
      },
    );
  }
}

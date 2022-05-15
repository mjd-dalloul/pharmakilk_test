import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pharmaklik/core/app/app.dart';
import 'package:pharmaklik/injection.dart';

void main() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  await inject();
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

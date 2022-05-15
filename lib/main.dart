import 'package:flutter/material.dart';
import 'package:pharmaklik/core/app/app.dart';
import 'package:pharmaklik/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inject();
  runApp(const MyApp());
}
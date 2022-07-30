import 'view/pages/home/home_page.dart';
import 'view/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Devnology',
      theme: AppTheme.theme,
      home: HomePage(),
    );
  }
}

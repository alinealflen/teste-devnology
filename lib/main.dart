import 'core/bindings/cart_binding.dart';
import 'core/bindings/home_binding.dart';
import 'core/bindings/product_binding.dart';

import 'view/pages/cart/cart_page.dart';
import 'view/pages/checkout/checkout_page.dart';
import 'view/pages/home/home_page.dart';
import 'view/pages/product/product_page.dart';
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
      initialRoute: '/',
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/product',
          page: () => ProductPage(),
          binding: ProductBinding(),
        ),
        GetPage(
          name: '/cart',
          page: () => CartPage(),
          binding: CartBinding(),
        ),
        GetPage(
          name: '/checkout',
          page: () => const CheckoutPage(),
        ),
      ],
    );
  }
}

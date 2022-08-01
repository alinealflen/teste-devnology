import '../../theme/app_theme.dart';
import '../../widgets/button_widget.dart';

import '../../widgets/title_widget.dart';

import '../../widgets/navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_controller.dart';
import 'widgets/product_card_widget.dart';

class CartPage extends GetView<CartController> {
  CartPage({Key? key}) : super(key: key);
  final List<String> imageList = [
    'lib/core/assets/images/banner_11.png',
    'lib/core/assets/images/banner_11.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/core/assets/images/logo.png'),
        actions: const [
          IconButton(
            icon: Icon(
              color: Colors.white,
              Icons.chat_bubble_outline,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              color: Colors.white,
              Icons.notifications_none,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(
                  title: 'Cart',
                  color: context.theme.primaryColor,
                  size: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(() {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: controller.selectedProducts
                        .toSet()
                        .map((product) => ProductCardWidget(
                              product: product,
                              quantity: controller.productQuantity(product),
                              addProduct: controller.addToCart,
                              removeProduct: controller.removeFromCart,
                            ))
                        .toList(),
                  );
                })
              ],
            ),
          ),
          Container(
            color: AppTheme.tertiary,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 23,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWidget(
                      title: 'Total',
                      color: Colors.white,
                      size: 16,
                    ),
                    Obx(() {
                      return TitleWidget(
                        title: '\$ ${controller.totalPrice}',
                        color: Colors.white,
                        size: 24,
                      );
                    }),
                  ],
                ),
                const SizedBox(width: 50),
                ButtonWidget(
                  text: 'CHECKOUT',
                  isShare: false,
                  onTap: () {
                    Get.toNamed('/checkout');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}

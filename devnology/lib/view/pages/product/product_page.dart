import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_theme.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/cart_counter_widget.dart';
import '../../widgets/text_card_widget.dart';
import '../../widgets/title_widget.dart';
import 'product_controller.dart';
import 'widgets/carousel_product_widget.dart';

class ProductPage extends GetView<ProductController> {
  ProductPage({Key? key}) : super(key: key);
  final List<String> imageList = [
    'lib/core/assets/images/3000222362_PRD_1500_11.png',
    'lib/core/assets/images/3192783133_1SZ1.png',
    'lib/core/assets/images/ideapad-flex-i5-hero-subseries-br1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/core/assets/images/logo.png'),
        actions: [
          IconButton(
            icon: const CartCounterWidget(),
            onPressed: () {},
          ),
        ],
      ),
      body: controller.obx((product) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleWidget(
                      title: product!.title,
                      color: Colors.black,
                      size: 15,
                    ),
                    CarouselProductWidget(
                      imageList: imageList,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TitleWidget(
                          title: 'Price',
                          color: Colors.black,
                          size: 15,
                        ),
                        TitleWidget(
                          title: '\$ ${product.price}',
                          color: AppTheme.primary,
                          size: 26,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TitleWidget(
                          title: 'About this item:',
                          color: Colors.black,
                          size: 15,
                        ),
                        TextCardWidget(
                          description: product.description,
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
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
                  ButtonWidget(
                    text: 'SHARE THIS',
                    isShare: true,
                    onTap: () {},
                  ),
                  const SizedBox(width: 50),
                  ButtonWidget(
                    text: 'ADD TO CART',
                    isShare: false,
                    onTap: () => controller.addToCart(product),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

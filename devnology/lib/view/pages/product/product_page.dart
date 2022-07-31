import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_card_widget.dart';
import '../../widgets/title_widget.dart';
import 'widgets/carousel_product_widget.dart';

class ProductPage extends StatelessWidget {
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
        actions: const [
          IconButton(
            icon: Icon(
              color: Colors.white,
              Icons.shopping_cart,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
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
                  const TitleWidget(
                    title: 'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop',
                    color: Colors.black,
                    size: 15,
                  ),
                  CarouselProductWidget(
                    imageList: imageList,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TitleWidget(
                        title: 'Price',
                        color: Colors.black,
                        size: 15,
                      ),
                      TitleWidget(
                        title: '\$1,5199.99 ',
                        color: AppTheme.primary,
                        size: 26,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TitleWidget(
                        title: 'About this item:',
                        color: Colors.black,
                        size: 15,
                      ),
                      TextCardWidget(
                        description:
                            '1.8 GHz Intel Core i7-10510U Quad-Core Processor 16GB of DDR4 RAM | 512GB SSD 15.6" 1920 x 1080 IPS Display NVIDIA Quadro P520 Windows 10 Pro 64-Bit Edition 1.8 GHz Intel Core i7-10510U Quad-Core Processor 16GB of DDR4 RAM | 512GB SSD 15.6" 1920 x 1080 IPS Display NVIDIA Quadro P520',
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
              children: const [
                ButtonWidget(
                  text: 'SHARE THIS',
                  isShare: true,
                ),
                SizedBox(width: 50),
                ButtonWidget(
                  text: 'ADD TO CART',
                  isShare: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

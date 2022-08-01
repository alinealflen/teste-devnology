import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../viewModel/cart/cart_view_model.dart';

class CartCounterWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  const CartCounterWidget({
    this.icon = Icons.shopping_cart_outlined,
    this.iconColor = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Obx(
          () {
            if (Get.find<CartViewModel>().selectedProducts.isNotEmpty) {
              return Positioned(
                bottom: -2,
                right: -2,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: context.theme.colorScheme.secondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      Get.find<CartViewModel>()
                          .selectedProducts
                          .length
                          .toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}

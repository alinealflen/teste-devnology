import 'package:flutter/material.dart';

import '../../../../model/entities/product_entity.dart';
import '../../../widgets/title_widget.dart';
import 'quantity_button_widget.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;
  final int quantity;
  final Function(Product) addProduct;
  final Function(Product) removeProduct;

  const ProductCardWidget({
    required this.product,
    required this.quantity,
    required this.addProduct,
    required this.removeProduct,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(product.images.first),
            ),
          ),
        ),
        Flexible(
          child: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                TitleWidget(
                  title: '\$ ${product.price}',
                  color: Colors.black,
                  size: 14,
                ),
                Row(
                  children: [
                    QuantityButtonWidget.minus(() => removeProduct(product)),
                    TitleWidget(
                      title: quantity.toString(),
                      color: Colors.black,
                      size: 14,
                    ),
                    QuantityButtonWidget.plus(() => addProduct(product)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../model/entities/product_entity.dart';

class CardProductWidget extends StatelessWidget {
  final Product product;

  const CardProductWidget({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.toNamed('/product', arguments: {'productId': product.id}),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 6, 10, 8),
        width: 101,
        height: 135,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.images.first),
            Text(
              product.title,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'R\$ ${product.price}',
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

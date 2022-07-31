import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widgets/text_card_widget.dart';
import '../../widgets/title_widget.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/core/assets/images/logo.png'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: 101,
          height: 101,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppTheme.primary,
          ),
        ),
        const TitleWidget(
          title: 'Order Placed',
          color: AppTheme.primary,
          size: 30,
        ),
        const TextCardWidget(
          description:
              'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
          size: 14,
          isCheckout: true,
        ),
        const SizedBox(
          height: 80,
        ),
        // const ButtonWidget()
        SizedBox(
          width: 140,
          height: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Material(
              color: AppTheme.primary,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'MY ORDERS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

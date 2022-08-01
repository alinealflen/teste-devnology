import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widgets/button_widget.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 101,
            height: 101,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.primary,
            ),
            child: const Icon(
              Icons.check,
              size: 60,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TitleWidget(
            title: 'Order Placed!',
            color: AppTheme.primary,
            size: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: TextCardWidget(
              description:
                  'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
              size: 14,
              isCheckout: true,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          ButtonWidget(text: 'MY ORDERS', isShare: false, onTap: () {})
        ],
      ),
    );
  }
}

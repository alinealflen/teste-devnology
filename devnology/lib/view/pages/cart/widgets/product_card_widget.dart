import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../../widgets/text_card_widget.dart';
import '../../../widgets/title_widget.dart';

class ProductCardWidget extends StatelessWidget {
  final String description;

  const ProductCardWidget({
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.black,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextCardWidget(
              description: description,
              size: 11,
            ),
            const TitleWidget(
              title: '\$1,519.99',
              color: Colors.black,
              size: 14,
            ),
            Row(
              children: [
                Container(
                  height: 13,
                  width: 13,
                  color: AppTheme.primary,
                ),
                const TitleWidget(
                  title: '1',
                  color: Colors.black,
                  size: 14,
                ),
                Container(
                  height: 13,
                  width: 13,
                  color: AppTheme.primary,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class QuantityButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const QuantityButtonWidget({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  const QuantityButtonWidget.minus(
    this.onPressed, {
    this.text = '-',
    Key? key,
  }) : super(key: key);

  const QuantityButtonWidget.plus(
    this.onPressed, {
    this.text = '+',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 16.0,
          width: 16.0,
          decoration: const BoxDecoration(
            color: AppTheme.primary,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

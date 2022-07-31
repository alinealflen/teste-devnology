import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class TextCardWidget extends StatelessWidget {
  final String description;
  final double size;
  final bool isCheckout;

  const TextCardWidget({
    required this.description,
    required this.size,
    this.isCheckout = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Text(
        description,
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w400,
          color: isCheckout ? AppTheme.primary : Colors.black,
        ),
      ),
    );
  }
}

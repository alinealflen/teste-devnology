import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final bool isShare;

  const ButtonWidget({
    required this.text,
    required this.isShare,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        color: isShare ? Colors.white : AppTheme.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: isShare ? AppTheme.primary : Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Icon(
                  isShare
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_right,
                  color: isShare ? AppTheme.primary : Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

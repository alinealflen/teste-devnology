import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final bool isShare;
  final Function() onTap;

  const ButtonWidget({
    required this.text,
    required this.isShare,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Material(
          color: isShare ? Colors.white : AppTheme.primary,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }
}

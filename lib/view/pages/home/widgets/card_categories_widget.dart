import 'package:flutter/cupertino.dart';

class CardCategoriesWidget extends StatelessWidget {
  final String title;
  final Color color;

  const CardCategoriesWidget({
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        Text(title),
      ],
    );
  }
}

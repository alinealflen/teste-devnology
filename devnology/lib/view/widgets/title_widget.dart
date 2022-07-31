import 'package:flutter/cupertino.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final Color color;
  final double size;

  const TitleWidget({
    required this.title,
    required this.color,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(fontSize: size, fontWeight: FontWeight.w700, color: color),
    );
  }
}

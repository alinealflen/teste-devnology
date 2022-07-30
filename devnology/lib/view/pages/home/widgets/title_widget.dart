import 'package:flutter/cupertino.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final Color color;

  const TitleWidget({
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: color),
    );
  }
}

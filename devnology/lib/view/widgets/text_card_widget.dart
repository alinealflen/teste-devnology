import 'package:flutter/material.dart';

class TextCardWidget extends StatelessWidget {
  final String description;
  final double size;

  const TextCardWidget({
    required this.description,
    required this.size,
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
          color: Colors.black,
        ),
      ),
    );
  }
}

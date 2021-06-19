import 'package:flutter/material.dart';

class HighlightLabel extends StatelessWidget {
  const HighlightLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffa1dbf5),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
      ),
    );
  }
}

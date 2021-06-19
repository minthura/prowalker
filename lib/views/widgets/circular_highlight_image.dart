import 'package:flutter/material.dart';

class CircularHighlightImage extends StatelessWidget {
  const CircularHighlightImage({
    Key? key,
    required this.circleColor,
    required this.logoUrl,
    this.logoSize,
    this.baseCircleSize,
  }) : super(key: key);

  final int circleColor;
  final String logoUrl;
  final double? logoSize;
  final double? baseCircleSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Container(
            width: baseCircleSize ?? 160,
            height: baseCircleSize ?? 160,
            decoration: BoxDecoration(
              color: Color(circleColor),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: baseCircleSize == null ? 120 : baseCircleSize! - 20,
            height: baseCircleSize == null ? 120 : baseCircleSize! - 20,
            decoration: BoxDecoration(
              color: Color(circleColor),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          child: Image.asset(
            logoUrl,
            width: logoSize,
          ),
        ),
      ],
    );
  }
}

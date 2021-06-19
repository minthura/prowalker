import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PriceLabel extends StatelessWidget {
  const PriceLabel({
    Key? key,
    required this.price,
    required this.unit,
    this.fontSize,
    this.fontColor,
    this.align,
  }) : super(key: key);

  final String unit;
  final String price;
  final double? fontSize;
  final Color? fontColor;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: align == null
          ? MainAxisAlignment.center
          : (align! == TextAlign.left)
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(
            unit,
            style: Get.textTheme.bodyText2?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: fontColor,
            ),
          ),
        ),
        Text(
          price,
          style: Get.textTheme.bodyText2?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: fontSize == null ? 16 : fontSize! + 16.0,
            color: fontColor,
          ),
        ),
      ],
    );
  }
}

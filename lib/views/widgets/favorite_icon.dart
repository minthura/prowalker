import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    Key? key,
    required this.isFavorite,
  }) : super(key: key);

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    if (isFavorite) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                offset: Offset(0, 1),
                color: Colors.red,
              )
            ]),
        child: Icon(
          CupertinoIcons.heart_fill,
          color: Colors.white,
          size: 12,
        ),
      );
    }
    return Icon(
      CupertinoIcons.heart_fill,
      size: 12,
      color: Colors.grey,
    );
  }
}

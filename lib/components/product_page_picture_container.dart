import 'package:flutter/material.dart';

class ProductPagePictureContainer extends StatelessWidget {
  final String picturePath;

  const ProductPagePictureContainer({
    super.key,
    required this.picturePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(picturePath).image,
        ),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: FractionallySizedBox(
          widthFactor: 0.13,
          heightFactor: 0.11,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }
}

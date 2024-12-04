import 'package:flutter/material.dart';

TextStyle fProductTitleFont(BuildContext context, double fontSize) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle fProductPriceFont(BuildContext context, Color color) {
  return TextStyle(
    fontSize: 14,
    color: color,
  );
}

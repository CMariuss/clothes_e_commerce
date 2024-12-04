import 'package:flutter/material.dart';

TextStyle fProductTitleFont(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade900,
  );
}

TextStyle fProductPriceFont(BuildContext context, Color color) {
  return TextStyle(
    fontSize: 14,
    color: color,
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreFilterRow extends StatefulWidget {
  const ExploreFilterRow({super.key});

  @override
  State<ExploreFilterRow> createState() => _ExploreFilterRowState();
}

class _ExploreFilterRowState extends State<ExploreFilterRow> {
  // Dropdown values
  String selectedRating = 'Rating';
  String selectedSize = 'Size';
  String selectedColor = 'Color';
  String selectedPrice = 'Price';

  // Dropdown options
  final List<String> ratingOptions = [
    'Rating',
    '1 Star',
    '2 Stars',
    '3 Stars',
    '4 Stars',
    '5 Stars'
  ];
  final List<String> priceOptions = ['Price', 'Low', 'Medium', 'High'];
  final List<String> sizeOptions = ['Size', 'Small', 'Medium', 'Large'];
  final List<String> colorOptions = [
    'Color',
    'Red',
    'Blue',
    'Green',
    'Black',
    'White'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            CupertinoIcons.line_horizontal_3_decrease,
            color: Colors.blueGrey,
            size: 20,
          ),
          // const SizedBox(width: 10),
          _buildDropdown('Rating', selectedRating, ratingOptions, (value) {
            setState(() {
              selectedRating = value!;
            });
          }),
          // const SizedBox(width: 10),
          _buildDropdown('Size', selectedSize, sizeOptions, (value) {
            setState(() {
              selectedSize = value!;
            });
          }),
          // const SizedBox(width: 10),
          _buildDropdown('Color', selectedColor, colorOptions, (value) {
            setState(() {
              selectedColor = value!;
            });
          }),
          // const SizedBox(width: 10),
          _buildDropdown('Price', selectedPrice, priceOptions, (value) {
            setState(() {
              selectedPrice = value!;
            });
          }),
        ],
      ),
    );
  }
}

Widget _buildDropdown(String label, String currentValue, List<String> options,
    ValueChanged<String?> onChanged) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(10),
    ),
    height: 40,
    child: DropdownButton<String>(
      value: currentValue,
      onChanged: onChanged,
      alignment: Alignment.center,
      style: const TextStyle(color: Colors.blueGrey),
      borderRadius: BorderRadius.circular(10),
      items: options.map((option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Center(child: Text(option)),
        );
      }).toList(),
      underline: Container(height: 0),
      icon: const SizedBox.shrink(),
      isExpanded: false,
    ),
  );
}

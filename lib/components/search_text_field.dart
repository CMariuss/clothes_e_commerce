import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            size: 18,
            color: Colors.blueGrey,
          ),
          hintText: 'Blouses . .',
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Colors.blueGrey,
          )),
    );
  }
}

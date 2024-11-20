import 'package:clothes_e_commerce/components/categories_row.dart';
import 'package:clothes_e_commerce/components/explore_filter_row.dart';
import 'package:clothes_e_commerce/components/search_text_field.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchTextField(),
        foregroundColor: Colors.grey.shade800,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              // filter row
              SizedBox(height: 10),
              ExploreFilterRow(),

              // categories
              SizedBox(height: 10),
              CategoriesRow(),

              // product list
            ],
          ),
        ),
      ),
    );
  }
}

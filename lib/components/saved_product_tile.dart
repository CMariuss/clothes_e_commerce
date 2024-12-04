import 'package:flutter/material.dart';

class SavedProductTile extends StatelessWidget {
  const SavedProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/men/jacket_men_01.png'),
        ),
        title: const Text('Men\'s jacket'),
        subtitle: const Text('rating'),
        trailing: const Text('\$20'),
      ),
    );
  }
}

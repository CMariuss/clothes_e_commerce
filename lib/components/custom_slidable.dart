import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomSlidable extends StatelessWidget {
  final Widget child;
  final Function(BuildContext)? onDeletePressed;

  const CustomSlidable({
    super.key,
    required this.child,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          // delete button
          SlidableAction(
            flex: 18,
            padding: const EdgeInsets.all(0.0),
            onPressed: onDeletePressed,
            icon: Icons.delete,
            foregroundColor: Colors.white,
            backgroundColor: Colors.orange,
            // borderRadius: BorderRadius.circular(7.0),
          ),
        ],
      ),
      child: child,
    );
  }
}

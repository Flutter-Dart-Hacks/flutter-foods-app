import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool isActive;

  const CategoryTitle({
    Key? key,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button?.copyWith(
              color: isActive ? kPrimaryColor : kTextColor.withOpacity(0.4),
            ),
      ),
    );
  }
}

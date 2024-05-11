import 'package:flutter/material.dart';

import '../../../models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel model;
  final int index;
  final Function onItemClick;

  const CategoryItem(
      {super.key,
      required this.onItemClick,
      required this.model,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onItemClick();
      },
      child: Container(
        decoration: BoxDecoration(
            color: model.itemColor,
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0),
                bottomLeft: (index % 2 == 0)
                    ? const Radius.circular(25.0)
                    : const Radius.circular(0.0),
                bottomRight: (index % 2 == 0)
                    ? const Radius.circular(0.0)
                    : const Radius.circular(25.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              model.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

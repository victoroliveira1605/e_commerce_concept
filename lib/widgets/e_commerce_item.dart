import 'package:e_commerce_concept/core/k_padding.dart';
import 'package:e_commerce_concept/models/product_item.dart';
import 'package:flutter/material.dart';

class ECommerceItem extends StatelessWidget {
  final ProductItem item;
  final VoidCallback onPressed;
  final bool selected;
  const ECommerceItem({
    required this.item,
    required this.onPressed,
    this.selected = false,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              item.image,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kPadding / 4),
            child: Text(
              item.title,
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ),
          Text(
            "\$ ${item.amount}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kPadding / 2,
          )
        ],
      ),
    );
  }
}

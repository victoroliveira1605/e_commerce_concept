import 'package:e_commerce_concept/core/responsive_layout.dart';
import 'package:e_commerce_concept/models/product_item.dart';
import 'package:e_commerce_concept/widgets/e_com_drawer.dart';
import 'package:e_commerce_concept/widgets/e_com_item_description.dart';
import 'package:e_commerce_concept/widgets/e_com_items.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage() : super();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
        iphone: ECommerceItems(),
        ipad: Row(
          children: [
            Expanded(
              flex: 9,
              child: ECommerceItems(),
            ),
            Expanded(
              flex: 9,
              child: ECommerceItemDescription(
                item: products[0],
              ),
            ),
          ],
        ),
        macbook: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ECommerceItems(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: ECommerceItemDescription(
                item: products[0],
              ),
            ),
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: ECommerceDrawer(),
            ),
          ],
        ),
      ),
    );
  }
}

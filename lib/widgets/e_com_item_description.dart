import 'package:e_commerce_concept/core/colors.dart';
import 'package:e_commerce_concept/core/k_padding.dart';
import 'package:e_commerce_concept/models/product_item.dart';
import 'package:flutter/material.dart';

import 'top_bar_description.dart';

class ECommerceItemDescription extends StatelessWidget {
  final ProductItem item;
  const ECommerceItemDescription({required this.item}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: kPadding),
        child: Column(
          children: [
            TopBarDescription(),
            Divider(thickness: 1),
            SingleChildScrollView(
              padding: EdgeInsets.all(kPadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 24,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("images/logo.png"),
                  ),
                  SizedBox(width: kPadding),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("# ${item.uid}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Colors.black
                                                  .withOpacity(0.5))),
                                  Text(item.title,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.primaryTextColor))
                                ],
                              ),
                            ),
                            SizedBox(width: kPadding / 2),
                            Text("\$ ${item.amount}",
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: kPadding),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Divider(thickness: 1),
                SizedBox(
                  height: 10,
                ),
                Text(
                  item.description,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                  ),
                ),
                SizedBox(height: kPadding),
                Row(
                  children: [
                    Spacer(),
                    Text("Reviews (${item.review}) ",
                        style: TextStyle(fontSize: 15)),
                    Icon(Icons.star_rounded, color: Colors.yellow),
                    Icon(Icons.star_rounded, color: Colors.yellow),
                    Icon(Icons.star_rounded, color: Colors.yellow),
                    Icon(Icons.star_rounded, color: Colors.yellow),
                    Icon(Icons.star_outline_rounded, color: Colors.yellow),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

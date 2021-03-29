import 'package:e_commerce_concept/core/colors.dart';
import 'package:e_commerce_concept/core/k_padding.dart';
import 'package:e_commerce_concept/core/responsive_layout.dart';
import 'package:e_commerce_concept/models/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'categories.dart';
import 'e_com_drawer.dart';
import 'e_com_item_description.dart';
import 'e_commerce_item.dart';

class ECommerceItems extends StatefulWidget {
  const ECommerceItems() : super();

  @override
  _ECommerceItemsState createState() => _ECommerceItemsState();
}

class _ECommerceItemsState extends State<ECommerceItems> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: ECommerceDrawer(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: kIsWeb ? kPadding : 0),
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kPadding, vertical: 10),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppColors.accentColor),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: kPadding),
                        child: Text(
                          "What is your hunger today ? ",
                          style: TextStyle(
                              color: Color(0xFF545460),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: kPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Material(
                              color: Theme.of(context).primaryColor,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: InkResponse(
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {},
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: kPadding, vertical: kPadding),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search product",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kPadding * 0.70,
                                vertical: kPadding * 0.20),
                            child: Icon(
                              Icons.search_rounded,
                              color: AppColors.accentColor,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(4, 4),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: kPadding / 2)
                ],
              ),
              Categories(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding),
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: kPadding),
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kPadding,
                      crossAxisSpacing: kPadding,
                      childAspectRatio: 0.80,
                    ),
                    itemBuilder: (context, index) => ECommerceItem(
                        item: products[index],
                        onPressed: () {
                          if (ResponsiveLayout.isIphone(context))
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ECommerceItemDescription(
                                  item: products[index],
                                ),
                              ),
                            );
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

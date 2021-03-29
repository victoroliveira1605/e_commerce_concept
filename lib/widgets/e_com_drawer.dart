import 'package:e_commerce_concept/core/colors.dart';
import 'package:e_commerce_concept/core/k_padding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'drawer_items.dart';

class ECommerceDrawer extends StatelessWidget {
  const ECommerceDrawer() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kPadding : 0),
      color: AppColors.primaryColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: Column(
            children: [
              SizedBox(height: kPadding * 2),
              DrawerItems(
                onPressed: () {},
                title: "Your Account",
                icon: Icons.person_outline_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Your Orders",
                icon: Icons.cloud_circle_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Your Payments",
                icon: Icons.payment,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Notifications",
                icon: Icons.notifications_active_outlined,
              ),
              SizedBox(height: kPadding * 2),
            ],
          ),
        ),
      ),
    );
  }
}

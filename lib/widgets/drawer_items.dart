import 'package:e_commerce_concept/core/colors.dart';
import 'package:e_commerce_concept/core/k_padding.dart';
import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  //This is for each item in the Drawer
  const DrawerItems({
    this.selected = false,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super();

  final bool selected;
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(
                    kPadding,
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all(AppColors.secondColor)),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: AppColors.accentColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

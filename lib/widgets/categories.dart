import 'package:e_commerce_concept/core/colors.dart';
import 'package:e_commerce_concept/core/k_padding.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Burger",
    "Fried Chicken",
    "Bacon and eggs",
    "Pizza",
    "Apple Pie"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                  bottom: kPadding / 4,
                  top: kPadding / 4,
                  right: kPadding,
                  left: index == 0 ? kPadding : 0),
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
                    backgroundColor: MaterialStateProperty.all(
                        selectedIndex == index
                            ? AppColors.accentColor
                            : AppColors.secondColor)),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? AppColors.accentTextColor
                        : AppColors.primaryTextColor,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

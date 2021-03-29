import 'package:e_commerce_concept/core/colors.dart';
import 'package:e_commerce_concept/pages/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'eCommerce',
    theme: ThemeData(
      primaryColor: AppColors.primaryColor,
      accentColor: AppColors.accentColor,
    ),
    home: MenuPage(),
  ));
}

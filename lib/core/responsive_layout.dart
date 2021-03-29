import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget iphone;
  final Widget ipad;
  final Widget macbook;
  const ResponsiveLayout(
      {required this.iphone, required this.ipad, required this.macbook})
      : super();

  static int iphoneLimit = 640;
  static int ipadLimit = 1200;

  static bool isIphone(BuildContext context) =>
      MediaQuery.of(context).size.width < iphoneLimit;

  static bool isIpad(BuildContext context) =>
      MediaQuery.of(context).size.width < ipadLimit &&
      MediaQuery.of(context).size.width >= iphoneLimit;

  static bool isMacbook(BuildContext context) =>
      MediaQuery.of(context).size.width >= ipadLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < iphoneLimit) {
          return iphone;
        }
        if (constraints.maxWidth < ipadLimit) {
          return ipad;
        } else {
          return macbook;
        }
      },
    );
  }
}

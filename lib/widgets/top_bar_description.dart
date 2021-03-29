import 'package:e_commerce_concept/core/colors.dart';
import 'package:e_commerce_concept/core/k_padding.dart';
import 'package:e_commerce_concept/core/responsive_layout.dart';
import 'package:flutter/material.dart';

class TopBarDescription extends StatelessWidget {
  const TopBarDescription() : super();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kPadding * 2, bottom: kPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (ResponsiveLayout.isIphone(context))
            Expanded(
                flex: 1,
                child: Container(
                  child: GestureDetector(
                    child: Icon(Icons.arrow_back_ios_rounded),
                    onTap: () => Navigator.pop(context),
                  ),
                )),
          if (ResponsiveLayout.isMacbook(context)) Spacer(),
          Expanded(
            flex: 9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: 100,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                            vertical: kPadding,
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.secondColor)),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: kPadding),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: 100,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                            vertical: kPadding,
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.primaryColor)),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText});

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppStyle.headingText1,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              smallText,
              style:
                  AppStyle.headingText3.copyWith(color: AppStyle.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}

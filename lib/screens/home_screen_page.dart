import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyle.headingText3,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Booking Tickets", style: AppStyle.headingText1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/log.png")),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("search icon"),
                    Text("empty space"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

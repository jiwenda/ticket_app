import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media/app_media.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
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
                          image:
                              DecorationImage(image: AssetImage(AppMedia.logo)),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(width: 0.5)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.search,
                        color: AppStyle.secondary1,
                      ),
                      Text("search"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: 'Upcomming Bus',
                  smallText: 'View all',
                ),

                //page of ticket view,

                TicketView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

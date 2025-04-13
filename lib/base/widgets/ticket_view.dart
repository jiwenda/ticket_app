import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppStyle.ticketBlue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "NYC",
                  style: AppStyle.headingText3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                BigDot(),
                Expanded(
                    child: Stack(
                  children: [
                    SizedBox(child: Text("---------------")),
                    Center(
                      child: Text("plane"),
                    )
                  ],
                )),
                BigDot(),
                Expanded(child: Container()),
                Text(
                  "NYC",
                  style: AppStyle.headingText3.copyWith(color: Colors.white),
                )
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}

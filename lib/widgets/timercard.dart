import 'package:flutter/material.dart';
import 'package:focus_lock/utils.dart';
import 'package:provider/provider.dart';

import '../timerservice.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final ss = provider.currentDuration % 60;
    return Column(
      children: [
        Text(
          "Set Your Goal",
          style: textStyle(25, Colors.white, FontWeight.w500),
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(0, 2))
                ],
              ),
              child: Center(
                child: Text(
                  (provider.currentDuration ~/ 60).toString(),
                  style: textStyle(70, Colors.redAccent, FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              ":",
              style: textStyle(60, Colors.red[200], FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(0, 2))
                ],
              ),
              child: Center(
                child: Text(
                  ss <= 9 ? "0${ss.round()}" : ss.round().toString(),
                  style: textStyle(70, Colors.redAccent, FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:focus_lock/widgets/timecontroller.dart';
import 'package:focus_lock/widgets/timercard.dart';
import 'package:focus_lock/widgets/timeroptions.dart';
import 'utils.dart';

class FocusLock extends StatelessWidget {
  const FocusLock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 87, 87),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 248, 48, 48),
        title: Text(
          "Focus Lock",
          style: textStyle(30, Colors.white, FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 20),
              TimerCard(),
              SizedBox(
                height: 40,
              ),
              TimeOptions(),
              SizedBox(
                height: 50,
              ),
              TimeController()
            ],
          ),
        ),
      ),
    );
  }
}

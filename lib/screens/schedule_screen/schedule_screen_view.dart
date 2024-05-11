import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:up_care_v1/screens/schedule_screen/widgets/schedule_card.dart';

class ScheduleScreenView extends StatefulWidget {
  const ScheduleScreenView({super.key});

  @override
  State<ScheduleScreenView> createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleScreenView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "Let's find out!",
            style: TextStyle(
              color: Color(0xFFB4B1B1),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
          child: Text(
            "My Schedule",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => const ScheduleCard(),
            itemCount: 10,

          ),
        ),
      ],
    );
  }
}

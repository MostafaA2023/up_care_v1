import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/appointment_screen/appointment_screen_view.dart';
import 'package:up_care_v1/screens/specialists_screen/widgets/doctor_card.dart';

class SpecialistDoctorsView extends StatelessWidget {
  const SpecialistDoctorsView({super.key});

  static const routeName = "doctors";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          "Internist",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 23,
          ),
        ),
        actions:  [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Available Specialists",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => DoctorCard(onCardClicked: (){
                Navigator.pushNamed(context, AppointmentScreenView.routeName);
              } ),
                  itemCount: 10,
            ))
          ],
        ),
      ),
    );
  }
}

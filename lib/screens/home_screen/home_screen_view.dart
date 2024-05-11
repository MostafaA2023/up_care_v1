
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/home_screen/notification_screen_view.dart';
import 'package:up_care_v1/screens/home_screen/widgets/carousel.dart';
import 'package:up_care_v1/screens/home_screen/widgets/specialist_card.dart';
import 'package:up_care_v1/screens/specialists_screen/specialist_doctors_view.dart';

import '../../models/specialist_model.dart';


class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  static const routeName = 'home_screen';

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  List<SpecialistModel> cards = [
    SpecialistModel(
        name: "Neurology",
        image: "assets/images/brain.png",
        cardColor: const Color(0xFF63B2FD)),
    SpecialistModel(
        name: "Cardiology",
        image: "assets/images/heart.png",
        cardColor: Colors.white),
    SpecialistModel(
        name: "Obstetrics and Gynecology",
        image: "assets/images/obstetrics-gynecology.png",
        cardColor: Colors.white),
    SpecialistModel(
        name: "ENT", image: "assets/images/ENT.png", cardColor: Colors.white),
    SpecialistModel(
        name: "Internal Medicine",
        image: "assets/images/lungs.png",
        cardColor: Colors.white),
    SpecialistModel(
        name: "Dental",
        image: "assets/images/dentist.png",
        cardColor: Colors.white),
    SpecialistModel(
        name: "Bones",
        image: "assets/images/bone.png",
        cardColor: Colors.white),
    SpecialistModel(
        name: "Dermatology",
        image: "assets/images/body-hair.png",
        cardColor: Colors.white),
    SpecialistModel(
        name: "Surgery",
        image: "assets/images/surgery.jpg",
        cardColor: Colors.white),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Stay healthy!",
              style: TextStyle(
                color: Color(0xFFB4B1B1),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Mariam Sakr",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF64B3FF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context,NotificationScreen.routName);
                      },
                      icon: const Icon(
                        Icons.notifications,
                        size: 23,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF62B1FB),
                ),
                height: 140.0,
                child: AnotherCarousel(
                  images: const [
                    Carousel(title: "Welcome to Up Care"),
                    Carousel(title: "Here when you need\n us most"),
                    Carousel(title: "Wishing you a quick \n and recovery"),
                  ],
                  dotSize: 5.0,
                  dotSpacing: 15.0,
                  dotColor: const Color(0xFF62B1FB),
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.transparent,
                  borderRadius: true,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: true,
                )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Our Specialist",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 9.5 / 11),
              itemBuilder: (context, index) =>
                  SpecialistCard(specialist: cards[index], onCardClicked: (){
                    Navigator.pushNamed(context, SpecialistDoctorsView.routeName);
                  },),
              itemCount: 9,
            ),
          )
        ],
      ),

    );
  }
}

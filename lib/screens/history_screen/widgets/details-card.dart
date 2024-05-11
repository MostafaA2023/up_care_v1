import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(left: 16,right: 12,top: 16),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset.zero,
              blurRadius: 10.0,
              spreadRadius: 0.0,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
      ),
      child:  const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name:",style: TextStyle(fontSize: 16),),
              Text("Doctor:",style: TextStyle(fontSize: 16),),
              Text("Date:",style: TextStyle(fontSize: 16),),
              Text("Schedule:",style: TextStyle(fontSize: 16),),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Panadol",style: TextStyle(fontSize: 15),),
              Text("sara",style: TextStyle(fontSize: 15),),
              Text("17-3-2024",style: TextStyle(fontSize: 15),),
              Text("twice a day",style: TextStyle(fontSize: 15),),
            ],
          ),
        ],
      ),
    );
  }
}

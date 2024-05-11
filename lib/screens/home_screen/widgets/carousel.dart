import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  
  final String title;
  const Carousel({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(title, style:const TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),),
          Image.asset("assets/images/up-care.png",),

        ],
      ),
    );
  }
}

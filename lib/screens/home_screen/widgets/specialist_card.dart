import 'package:flutter/material.dart';
import '../../../models/specialist_model.dart';

class SpecialistCard extends StatelessWidget {

  final SpecialistModel specialist;
  final Function onCardClicked;

  const SpecialistCard({super.key, required this.specialist, required this.onCardClicked});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        onCardClicked();
      },
      child: Container(
        decoration: BoxDecoration(
          color: specialist.cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow:  [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Image.asset(specialist.image)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(specialist.name,style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

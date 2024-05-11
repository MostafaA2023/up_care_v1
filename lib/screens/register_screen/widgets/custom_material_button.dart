import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String title;

  const CustomMaterialButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 270,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xff64B3FF),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final Function onCardClicked;
  const DoctorCard({super.key, required this.onCardClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: () {
          onCardClicked();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset.zero,
                blurRadius: 10.0,
                spreadRadius: 0.0,
              )
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/doctor3.png',
                  height: 100,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr Benedet Montera",
                      style: TextStyle(
                          color: Colors.grey,fontSize: 15, fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 18,
                  ),
                  Text('A medical speacialy is a pranch\n of medicail ',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

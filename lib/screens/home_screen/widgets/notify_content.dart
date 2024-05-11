import 'package:flutter/material.dart';

class NotifyContent extends StatelessWidget {

  const NotifyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset.zero,
                blurRadius: 10.0,
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your appointment is booked \nsuccessfully',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              Row(
                children: [
                  Spacer(),
                  Icon(Icons.access_time),
                  SizedBox(
                    width: 8,
                  ),
                  Text('just now', style: TextStyle(color: Colors.grey))
                ],
              )
            ]),
      ),
    );
  }
}

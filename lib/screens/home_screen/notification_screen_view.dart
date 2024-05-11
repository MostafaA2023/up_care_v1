
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:up_care_v1/screens/home_screen/widgets/notify_content.dart';



class NotificationScreen extends StatelessWidget {
   const NotificationScreen({super.key});

  static const routName = 'notification_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              const Text(
                'Notifications',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                width: 8,
              ),
              const badges.Badge(
                badgeContent: Text(''),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'clear all',
                  style: TextStyle(color: Colors.grey),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => const NotifyContent(),
                itemCount: 10,
          )),
              TextButton(onPressed: (){}, child: const Text("See all messages",style: TextStyle(
                color: Colors.grey
              ),),)
        ]),
      ),
    );
  }
}

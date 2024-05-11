import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/history_screen/widgets/details-card.dart';

class HistoryDetails extends StatelessWidget {
  const HistoryDetails({super.key});

  static const routeName = "history_details";

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
          "Medicines",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 23,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => const DetailsCard(),
                itemCount: 10,
          ))
        ],
      ),
    );
  }
}

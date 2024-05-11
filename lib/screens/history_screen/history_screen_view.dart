import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/history_screen/history_details.dart';
import 'package:up_care_v1/screens/history_screen/widgets/category_item.dart';

import '../../models/category_model.dart';

class HistoryScreenView extends StatelessWidget {
   HistoryScreenView({super.key});
  List <CategoryModel> categories = [
    CategoryModel(itemColor: const Color(0xFFEB1E78), title: "Diseases"),
    CategoryModel(itemColor: const Color(0xFF003E90), title: "Medicines "),
    CategoryModel(itemColor: const Color(0xFF4882CF), title: "lab results"),
    CategoryModel(itemColor: const Color(0xFFC91C22), title: "Radiology lab results"),
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50,),
          const Text(
            "History",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.50,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 4/ 4,
              ),
              itemBuilder: (context, index) => CategoryItem(
                  index: index,
                  onItemClick: () {
                      Navigator.pushNamed(context, HistoryDetails.routeName);
                  },
                model: categories[index],),
              itemCount: 4,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              "Vital Signs",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.only(left: 16,right: 12,top: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("temperature",style: TextStyle(fontSize: 15),),
                Text("30",style: TextStyle(fontSize: 15),),
                Text("17-3-2024",style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
          itemCount: 10,))
        ],
      ),
    );
  }
}
